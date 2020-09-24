.class public final Lcom/coloros/settings/feature/othersettings/recover/g;
.super Ljava/lang/Object;
.source "ResetHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/othersettings/recover/g$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/coloros/c/a/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    .line 54
    new-instance v0, Lcom/coloros/c/a/a/a;

    invoke-direct {v0, p1}, Lcom/coloros/c/a/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/recover/g;->b:Lcom/coloros/c/a/a/a;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "20012"

    const/4 v1, 0x0

    .line 248
    invoke-static {p0, v0, p1, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;)V
    .locals 1

    .line 237
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    const-string v0, "master_clear_bus_card_cancel"

    invoke-static {p1, v0}, Lcom/coloros/settings/feature/othersettings/recover/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 236
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    const-string p2, "master_clear_bus_card_cancel"

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/othersettings/recover/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/recover/g;Lcom/coloros/settings/feature/othersettings/recover/j;)V
    .locals 5

    .line 2220
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    const v2, 0x7f1303b1

    invoke-direct {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    .line 2221
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setDialogType(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1080027

    .line 2222
    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setIcon(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    const v4, 0x7f120d30

    .line 2224
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    const v4, 0x7f120d2c

    .line 2225
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    new-instance v1, Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$g$YHYtjPu7RJzWrip6em8K86s8lbU;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$g$YHYtjPu7RJzWrip6em8K86s8lbU;-><init>(Lcom/coloros/settings/feature/othersettings/recover/g;Lcom/coloros/settings/feature/othersettings/recover/j;)V

    .line 2223
    invoke-virtual {v0, v2, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$g$a-3McruoAMfnK7dtgwgDtidVtps;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$g$a-3McruoAMfnK7dtgwgDtidVtps;-><init>(Lcom/coloros/settings/feature/othersettings/recover/g;)V

    const/high16 v1, 0x1040000

    .line 2236
    invoke-virtual {p1, v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$g$PjKZfbMQeKJ6oiHLjdqy5Ker-R8;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$g$PjKZfbMQeKJ6oiHLjdqy5Ker-R8;-><init>(Lcom/coloros/settings/feature/othersettings/recover/g;)V

    .line 2237
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120d2d

    .line 2238
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 2239
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2240
    check-cast p0, Landroid/app/Activity;

    if-eqz p0, :cond_0

    .line 2241
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    if-nez p0, :cond_0

    .line 2242
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/recover/g;Lcom/coloros/settings/feature/othersettings/recover/j;Z)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/othersettings/recover/g;->a(Lcom/coloros/settings/feature/othersettings/recover/j;Z)V

    return-void
.end method

.method private synthetic a(Lcom/coloros/settings/feature/othersettings/recover/j;Landroid/content/DialogInterface;I)V
    .locals 0

    if-nez p3, :cond_0

    .line 228
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    const-string p3, "master_clear_bus_card_continue"

    invoke-static {p2, p3}, Lcom/coloros/settings/feature/othersettings/recover/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 229
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/othersettings/recover/g;->a(Lcom/coloros/settings/feature/othersettings/recover/j;Z)V

    return-void

    :cond_0
    const/4 p1, 0x1

    if-ne p3, p1, :cond_1

    .line 231
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    const-string p2, "master_clear_bus_card_delete"

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/othersettings/recover/g;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 232
    new-instance p1, Landroid/content/Intent;

    const-string p2, "wallet://fintech/nfc/cardList?action=1"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p1, p3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 233
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private a(Lcom/coloros/settings/feature/othersettings/recover/j;Z)V
    .locals 3

    .line 150
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    .line 151
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setIcon(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    .line 152
    invoke-interface {p1, v1, p2}, Lcom/coloros/settings/feature/othersettings/recover/j;->a(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    .line 153
    invoke-interface {p1, v1}, Lcom/coloros/settings/feature/othersettings/recover/j;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$g$s9Eqk3bm0MHNArV-5Cd6mxAPPTc;

    invoke-direct {v2, p0, p2, p1}, Lcom/coloros/settings/feature/othersettings/recover/-$$Lambda$g$s9Eqk3bm0MHNArV-5Cd6mxAPPTc;-><init>(Lcom/coloros/settings/feature/othersettings/recover/g;ZLcom/coloros/settings/feature/othersettings/recover/j;)V

    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p1, p2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 172
    invoke-virtual {p1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setDialogType(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 173
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 174
    check-cast p2, Landroid/app/Activity;

    if-eqz p2, :cond_0

    .line 175
    invoke-virtual {p2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_0

    .line 176
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    :cond_0
    return-void
.end method

.method private synthetic a(ZLcom/coloros/settings/feature/othersettings/recover/j;Landroid/content/DialogInterface;I)V
    .locals 10

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 156
    invoke-direct {p0, p2, p1}, Lcom/coloros/settings/feature/othersettings/recover/g;->a(Lcom/coloros/settings/feature/othersettings/recover/j;Z)V

    return-void

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/recover/k;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->h(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    .line 1183
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    .line 1184
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/recover/g;->b:Lcom/coloros/c/a/a/a;

    if-eqz v1, :cond_3

    const-string p4, "HsRxAF2bMeNzPL54zGFLzw"

    const-string v7, "5100"

    .line 1187
    invoke-interface {p2}, Lcom/coloros/settings/feature/othersettings/recover/j;->b()Z

    move-result v4

    new-instance v6, Lcom/coloros/settings/feature/othersettings/recover/g$1;

    invoke-direct {v6, p0, p2, p1, p3}, Lcom/coloros/settings/feature/othersettings/recover/g$1;-><init>(Lcom/coloros/settings/feature/othersettings/recover/g;Lcom/coloros/settings/feature/othersettings/recover/j;Landroid/content/Context;Landroid/content/Context;)V

    .line 2098
    invoke-static {p3, p4}, Lcom/heytap/usercenter/accountsdk/AccountAgent;->getToken(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v8, 0x0

    .line 2099
    new-instance v9, Lcom/coloros/c/a/a/a$1;

    move-object v0, v9

    move-object v2, p3

    move-object v3, v7

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/coloros/c/a/a/a$1;-><init>(Lcom/coloros/c/a/a/a;Landroid/content/Context;Ljava/lang/String;ZLandroid/content/Context;Lcom/coloros/c/a/a/a$e;)V

    const-string v2, "XDd3QJhBAoDrogtm2WSdXG"

    move-object v0, p3

    move-object v1, p1

    move-object v4, p4

    move v5, v8

    move-object v6, v9

    invoke-static/range {v0 .. v6}, Lcom/platform/usercenter/sdk/verify/UCAccountVerifyAgent;->startOperateVerify(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/platform/usercenter/sdk/verify/UCAccountVerifyHandler;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "ResetHelper"

    const-string p3, "ConfirmDialog#neutral: start process"

    .line 160
    invoke-static {p1, p3}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    invoke-interface {p2, p1}, Lcom/coloros/settings/feature/othersettings/recover/j;->a(Landroid/content/Context;)V

    .line 167
    :cond_3
    :goto_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 168
    invoke-interface {p2}, Lcom/coloros/settings/feature/othersettings/recover/j;->d()Ljava/lang/String;

    move-result-object p2

    const-string p3, "reset_strategy_type"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/recover/g;->a:Landroid/content/Context;

    const-string p3, "reset_strategy"

    invoke-static {p2, p3, p1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic lambda$PjKZfbMQeKJ6oiHLjdqy5Ker-R8(Lcom/coloros/settings/feature/othersettings/recover/g;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/recover/g;->a(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic lambda$YHYtjPu7RJzWrip6em8K86s8lbU(Lcom/coloros/settings/feature/othersettings/recover/g;Lcom/coloros/settings/feature/othersettings/recover/j;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/feature/othersettings/recover/g;->a(Lcom/coloros/settings/feature/othersettings/recover/j;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$a-3McruoAMfnK7dtgwgDtidVtps(Lcom/coloros/settings/feature/othersettings/recover/g;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/othersettings/recover/g;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$s9Eqk3bm0MHNArV-5Cd6mxAPPTc(Lcom/coloros/settings/feature/othersettings/recover/g;ZLcom/coloros/settings/feature/othersettings/recover/j;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/coloros/settings/feature/othersettings/recover/g;->a(ZLcom/coloros/settings/feature/othersettings/recover/j;Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method final a(Lcom/coloros/settings/feature/othersettings/recover/j;)V
    .locals 3

    .line 62
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ResetHelper"

    if-nez p1, :cond_1

    const-string p1, "executeMasterClearTask, resetStrategy is null"

    .line 66
    invoke-static {v0, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 69
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "executeMasterClearTask: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/coloros/settings/feature/othersettings/recover/j;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v0, Lcom/coloros/settings/feature/othersettings/recover/g$a;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/othersettings/recover/g$a;-><init>(Lcom/coloros/settings/feature/othersettings/recover/g;Lcom/coloros/settings/feature/othersettings/recover/j;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/coloros/settings/feature/othersettings/recover/g$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
