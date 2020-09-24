.class Lcom/oppo/camera/ui/preview/h$a;
.super Landroid/os/Handler;
.source "FocusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/ui/preview/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/ui/preview/h;


# direct methods
.method public constructor <init>(Lcom/oppo/camera/ui/preview/h;Landroid/os/Looper;)V
    .locals 0

    .line 1200
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    .line 1201
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage, msg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FocusManager"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x4

    const/16 v2, 0x9

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 1323
    :pswitch_1
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->i(Lcom/oppo/camera/ui/preview/h;)V

    goto/16 :goto_2

    .line 1319
    :pswitch_2
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->h(Lcom/oppo/camera/ui/preview/h;)V

    goto/16 :goto_2

    .line 1308
    :pswitch_3
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->b(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1309
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->b(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setBarVisibility(Z)V

    .line 1312
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/h;->z()Z

    move-result p1

    if-nez p1, :cond_10

    .line 1313
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x6

    const-wide/16 v1, 0xfa0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    .line 1287
    :pswitch_4
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->b(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    move-result-object p1

    const/high16 v0, 0x3f000000    # 0.5f

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->b(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 1288
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->b(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setAlpha(F)V

    .line 1291
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->c(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1292
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->c(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->setAlpha(F)V

    .line 1295
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->e(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1296
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->e(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/RotateImageView;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/RotateImageView;->setAlpha(F)V

    .line 1299
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 1300
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1301
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1302
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1, v5}, Lcom/oppo/camera/ui/preview/h;->a(Lcom/oppo/camera/ui/preview/h;Z)Z

    goto/16 :goto_2

    :pswitch_5
    const-string p1, "MSG_RESET_AUTO_FOCUS"

    .line 1244
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/h;->w()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 1250
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->a(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/ui/preview/c;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    return-void

    .line 1254
    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->a(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/ui/preview/c;->h()Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 1258
    :cond_6
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->c(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 1259
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->c(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;->c()V

    .line 1262
    :cond_7
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->b(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1263
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->b(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/CommonComponent/SeekBar/ExposureControlSeekBar;->setVisibility(I)V

    .line 1266
    :cond_8
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1267
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1270
    :cond_9
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->a(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/ui/preview/c;->d()I

    move-result p1

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    .line 1274
    :cond_a
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {p1, v5}, Lcom/oppo/camera/ui/preview/h;->d(I)V

    .line 1276
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1277
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1278
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1279
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->h(Lcom/oppo/camera/ui/preview/h;)V

    goto/16 :goto_2

    .line 1281
    :cond_b
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->a(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/ui/preview/c;->l()V

    goto/16 :goto_2

    :pswitch_6
    const-string p1, "MSG_CAPTURE_WHATERVER_CASE"

    .line 1226
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1230
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/h;->i()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_0

    :cond_c
    move v4, v5

    :goto_0
    if-eqz v4, :cond_d

    .line 1233
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1234
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_d
    if-nez v4, :cond_10

    .line 1238
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->h(Lcom/oppo/camera/ui/preview/h;)V

    goto :goto_2

    .line 1222
    :pswitch_7
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->g(Lcom/oppo/camera/ui/preview/h;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_2

    .line 1216
    :pswitch_8
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->f(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/FaceView;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->f(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/FaceView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/FaceView;->a()Z

    move-result p1

    if-eqz p1, :cond_e

    move v5, v4

    :cond_e
    if-eqz v5, :cond_f

    .line 1217
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->f(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/FaceView;

    move-result-object p1

    goto :goto_1

    :cond_f
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->c(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/FocusIndicatorRotateLayout;

    move-result-object p1

    .line 1218
    :goto_1
    invoke-interface {p1, v4}, Lcom/oppo/camera/ui/preview/g;->a(Z)V

    goto :goto_2

    .line 1210
    :pswitch_9
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/h;->p()V

    .line 1211
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/h$a;->a:Lcom/oppo/camera/ui/preview/h;

    invoke-static {p1}, Lcom/oppo/camera/ui/preview/h;->a(Lcom/oppo/camera/ui/preview/h;)Lcom/oppo/camera/ui/preview/c;

    move-result-object p1

    invoke-interface {p1}, Lcom/oppo/camera/ui/preview/c;->a()V

    :cond_10
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
