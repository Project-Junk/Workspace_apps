.class Lcom/color/eyeprotect/a/a$e;
.super Lcom/color/eyeprotect/a/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/eyeprotect/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/color/eyeprotect/a/b/d<",
        "Lcom/color/eyeprotect/a/a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/color/eyeprotect/a/a;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/color/eyeprotect/a/b/d;-><init>(Ljava/lang/Object;Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/color/eyeprotect/a/a;Landroid/os/Looper;Lcom/color/eyeprotect/a/a$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/color/eyeprotect/a/a$e;-><init>(Lcom/color/eyeprotect/a/a;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Message;Lcom/color/eyeprotect/a/a;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-static {p2, v1}, Lcom/color/eyeprotect/a/a;->b(Lcom/color/eyeprotect/a/a;Z)Z

    goto :goto_2

    :pswitch_1
    invoke-static {p2}, Lcom/color/eyeprotect/a/a;->c(Lcom/color/eyeprotect/a/a;)V

    invoke-static {p2}, Lcom/color/eyeprotect/a/a;->d(Lcom/color/eyeprotect/a/a;)F

    move-result p0

    invoke-static {p2, p0, v1}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;FZ)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :pswitch_2
    const-string p0, "AICurveModel"

    const-string p1, "handleMessage MSG_FORCE_UPDATE."

    invoke-static {p0, p1}, Lcom/color/eyeprotect/a/b/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {p2}, Lcom/color/eyeprotect/a/a;->b(Lcom/color/eyeprotect/a/a;)V

    goto :goto_2

    :pswitch_3
    const-string p0, "AICurveModel"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage MSG_SENSOR_CHANGED, mSensorValue:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/color/eyeprotect/a/b/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;)F

    move-result p0

    invoke-static {p2, p0}, Lcom/color/eyeprotect/a/a;->c(Lcom/color/eyeprotect/a/a;F)Z

    move-result p0

    if-eqz p0, :cond_0

    :goto_1
    goto :goto_0

    :pswitch_4
    const/4 p0, 0x0

    invoke-static {p2, p0}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;Z)Z

    goto :goto_2

    :pswitch_5
    invoke-static {p2}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;)F

    move-result v0

    invoke-static {p2, v0}, Lcom/color/eyeprotect/a/a;->b(Lcom/color/eyeprotect/a/a;F)F

    move-result v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p2, v0, p1}, Lcom/color/eyeprotect/a/a;->a(Lcom/color/eyeprotect/a/a;FF)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/color/eyeprotect/a/a$e;->removeMessages(I)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Lcom/color/eyeprotect/a/a$e;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic a(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/color/eyeprotect/a/a;

    invoke-virtual {p0, p1, p2}, Lcom/color/eyeprotect/a/a$e;->a(Landroid/os/Message;Lcom/color/eyeprotect/a/a;)V

    return-void
.end method
