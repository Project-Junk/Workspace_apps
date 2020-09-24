.class Lcom/oppo/camera/e$2;
.super Lcom/oppo/camera/n/a;
.source "CameraManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/e;


# direct methods
.method constructor <init>(Lcom/oppo/camera/e;Landroid/os/Looper;)V
    .locals 0

    .line 1131
    iput-object p1, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-direct {p0, p2}, Lcom/oppo/camera/n/a;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage, what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraManager"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_5

    const/4 v5, 0x2

    if-eq v0, v5, :cond_4

    const/4 v6, 0x3

    if-eq v0, v6, :cond_3

    const/4 v6, 0x5

    if-eq v0, v6, :cond_2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1244
    :pswitch_0
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->C(Lcom/oppo/camera/e;)Lcom/oppo/camera/o;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1245
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->C(Lcom/oppo/camera/e;)Lcom/oppo/camera/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/o;->c()V

    goto/16 :goto_0

    .line 1230
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v3, "view_enable"

    .line 1233
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-string v4, "view_ashed"

    .line 1234
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1236
    iget-object v4, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 1237
    iget-object v4, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-static {v4}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v4

    invoke-virtual {v4, v3, v0}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    goto/16 :goto_0

    .line 1221
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    iget-object v3, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-static {v3}, Lcom/oppo/camera/e;->B(Lcom/oppo/camera/e;)[Landroid/hardware/camera2/params/Face;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oppo/camera/ui/e;->a([Landroid/hardware/camera2/params/Face;)V

    goto/16 :goto_0

    .line 1224
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->d()V

    goto/16 :goto_0

    .line 1215
    :pswitch_3
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1216
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/oppo/camera/ui/e;->i(Z)V

    goto/16 :goto_0

    .line 1208
    :pswitch_4
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1209
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->A(Lcom/oppo/camera/e;)Lcom/oppo/camera/e$l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e$l;->g()V

    goto/16 :goto_0

    .line 1204
    :pswitch_5
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v5}, Lcom/oppo/camera/e;->l(I)V

    goto/16 :goto_0

    .line 1199
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/oppo/camera/n/a;->removeMessages(I)V

    .line 1200
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0}, Lcom/oppo/camera/e;->M()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/oppo/camera/e;->i(I)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "handleMessage, onPreviewStartedAsync OK"

    .line 1168
    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v4}, Lcom/oppo/camera/e;->j(I)V

    .line 1171
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-static {v0, v3}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;Z)Z

    .line 1172
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v4}, Lcom/oppo/camera/e;->c(Z)V

    .line 1174
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-static {v0, v4}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;Z)Z

    .line 1176
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->z(Lcom/oppo/camera/e;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1177
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->y(Lcom/oppo/camera/e;)Lcom/oppo/camera/f;

    move-result-object v0

    invoke-interface {v0}, Lcom/oppo/camera/f;->c()V

    .line 1179
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->j(Lcom/oppo/camera/e;)Lcom/oppo/camera/n/a;

    move-result-object v0

    new-instance v3, Lcom/oppo/camera/e$2$1;

    invoke-direct {v3, p0}, Lcom/oppo/camera/e$2$1;-><init>(Lcom/oppo/camera/e$2;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v3, v4, v5}, Lcom/oppo/camera/n/a;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 1160
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    const/16 v4, 0x5f

    invoke-static {v0, v4, v3}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;IZ)V

    goto/16 :goto_0

    .line 1164
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    const/16 v4, 0x60

    invoke-static {v0, v4, v3}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;IZ)V

    goto :goto_0

    .line 1138
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->b(Lcom/oppo/camera/e;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "handleMessage, MSG_CODE_SWITCH_CAMERA_OVER_TIME"

    .line 1139
    invoke-static {v2, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v3}, Lcom/oppo/camera/e;->g(Z)V

    .line 1142
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0, v4, v4}, Lcom/oppo/camera/ui/e;->d(ZZ)V

    .line 1144
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/ui/e;->y()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->i(Lcom/oppo/camera/e;)Lcom/oppo/camera/d/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/d/i;->aY()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1145
    invoke-static {}, Lcom/oppo/camera/debug/DebugUtil;->isEnableHighPictureSizeSetting()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1146
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v0

    sget-object v5, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_PICTURE_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 1147
    invoke-static {v5}, Lcom/oppo/camera/config/CameraConfig;->getSizeConfigValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Landroid/util/Size;

    move-result-object v5

    .line 1146
    invoke-static {v0, v5}, Lcom/oppo/camera/o/d;->a(Landroid/content/Context;Landroid/util/Size;)D

    move-result-wide v5

    .line 1148
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-static {v0}, Lcom/oppo/camera/e;->c(Lcom/oppo/camera/e;)Lcom/oppo/camera/ui/e;

    move-result-object v0

    iget-object v7, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    .line 1149
    invoke-static {v7}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;)Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f0f0124

    new-array v9, v4, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v9, v3

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0501d2

    .line 1148
    invoke-virtual {v0, v5, v3, v6}, Lcom/oppo/camera/ui/e;->a(Ljava/lang/String;II)V

    .line 1153
    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    invoke-virtual {v0, v4}, Lcom/oppo/camera/e;->j(I)V

    .line 1154
    iget-object v0, p0, Lcom/oppo/camera/e$2;->a:Lcom/oppo/camera/e;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/oppo/camera/e;->a(Lcom/oppo/camera/e;Lcom/oppo/camera/e$f;)Lcom/oppo/camera/e$f;

    .line 1254
    :cond_7
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " X"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
