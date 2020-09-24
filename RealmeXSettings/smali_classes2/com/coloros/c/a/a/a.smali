.class public final Lcom/coloros/c/a/a/a;
.super Ljava/lang/Object;
.source "FindPhoneLogoutControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/c/a/a/a$d;,
        Lcom/coloros/c/a/a/a$a;,
        Lcom/coloros/c/a/a/a$b;,
        Lcom/coloros/c/a/a/a$c;,
        Lcom/coloros/c/a/a/a$e;
    }
.end annotation


# static fields
.field public static final a:Z


# instance fields
.field public b:Landroid/content/Context;

.field c:J

.field d:J

.field public e:Landroid/os/Messenger;

.field public volatile f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;",
            ">;"
        }
    .end annotation
.end field

.field public g:Lcom/coloros/c/a/a/a$a;

.field public h:Z

.field private i:Lcom/coloros/c/a/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/coloros/c/a/a/c<",
            "Lcom/coloros/c/a/a/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/os/Messenger;

.field private k:Lcom/coloros/c/a/a/a$c;

.field private l:Lcom/coloros/c/a/a/a$b;

.field private m:Lcom/coloros/c/a/a/a$d;

.field private n:Lcom/coloros/c/a/a/a$d;

.field private o:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

.field private final p:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    .line 48
    invoke-static {v0, v1}, Lcom/color/compat/os/SystemPropertiesNative;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/c/a/a/a;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/c/a/a/a;->f:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/coloros/c/a/a/a;->g:Lcom/coloros/c/a/a/a$a;

    const/4 v1, 0x0

    .line 71
    iput-boolean v1, p0, Lcom/coloros/c/a/a/a;->h:Z

    .line 305
    new-instance v2, Lcom/coloros/c/a/a/a$5;

    invoke-direct {v2, p0}, Lcom/coloros/c/a/a/a$5;-><init>(Lcom/coloros/c/a/a/a;)V

    iput-object v2, p0, Lcom/coloros/c/a/a/a;->p:Landroid/os/IBinder$DeathRecipient;

    .line 81
    sget-boolean v2, Lcom/coloros/c/a/a/a;->a:Z

    if-eqz v2, :cond_0

    .line 82
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FindPhoneLogoutControl() this = "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FindPhoneLogoutControl"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/coloros/c/a/a/a;->b:Landroid/content/Context;

    .line 85
    iput-boolean v1, p0, Lcom/coloros/c/a/a/a;->h:Z

    .line 86
    invoke-direct {p0}, Lcom/coloros/c/a/a/a;->b()V

    .line 87
    invoke-direct {p0, p1, v0}, Lcom/coloros/c/a/a/a;->a(Landroid/content/Context;Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lcom/coloros/c/a/a/a;)Landroid/os/Messenger;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/c/a/a/a;->j:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic a(Lcom/coloros/c/a/a/a;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/coloros/c/a/a/a;->e:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic a(Lcom/coloros/c/a/a/a;Lcom/coloros/c/a/a/c;)Lcom/coloros/c/a/a/c;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/coloros/c/a/a/a;->i:Lcom/coloros/c/a/a/c;

    return-object p1
.end method

.method static synthetic a(Landroid/content/Context;ILcom/coloros/c/a/a/a$e;)V
    .locals 2

    .line 2162
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reportVerifyResult, result = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FindPhoneLogoutControl"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    if-nez p1, :cond_0

    .line 2165
    invoke-interface {p2}, Lcom/coloros/c/a/a/a$e;->a()V

    return-void

    .line 2168
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const-string p0, ""

    goto :goto_0

    .line 2171
    :cond_1
    sget p1, Lcom/coloros/c/a/a/b$a;->error_msg_logout_findphone_fail:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, "LOGOUT_RESULT_CODE_FAIL"

    .line 2176
    invoke-interface {p2, p1, p0}, Lcom/coloros/c/a/a/a$e;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/coloros/c/a/a/a;Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/coloros/c/a/a/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/c/a/a/a;Landroid/content/Context;Lcom/coloros/c/a/a/a$c;)V
    .locals 2

    .line 3189
    iput-object p2, p0, Lcom/coloros/c/a/a/a;->k:Lcom/coloros/c/a/a/a$c;

    .line 3190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/c/a/a/a;->c:J

    .line 3191
    sget-boolean p2, Lcom/coloros/c/a/a/a;->a:Z

    const-string v0, "FindPhoneLogoutControl"

    if-eqz p2, :cond_0

    .line 3192
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "checkFindPhoneIsOpen, mFindPhoneIsOpenStatusCallback = "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/c/a/a/a;->k:Lcom/coloros/c/a/a/a$c;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    :cond_0
    new-instance p2, Lcom/coloros/c/a/a/a$2;

    invoke-direct {p2, p0, p1}, Lcom/coloros/c/a/a/a$2;-><init>(Lcom/coloros/c/a/a/a;Landroid/content/Context;)V

    invoke-direct {p0, p1, p2}, Lcom/coloros/c/a/a/a;->a(Landroid/content/Context;Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "checkFindPhoneIsOpen. bindService fail, always consider findphone is open"

    .line 3213
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3214
    iget-object p0, p0, Lcom/coloros/c/a/a/a;->k:Lcom/coloros/c/a/a/a$c;

    if-eqz p0, :cond_1

    const/4 p1, 0x1

    .line 3215
    invoke-interface {p0, p1}, Lcom/coloros/c/a/a/a$c;->a(Z)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/coloros/c/a/a/a;Landroid/content/Context;Ljava/lang/String;Lcom/coloros/c/a/a/a$b;)V
    .locals 4

    .line 2228
    iput-object p3, p0, Lcom/coloros/c/a/a/a;->l:Lcom/coloros/c/a/a/a$b;

    .line 2229
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/c/a/a/a;->d:J

    .line 2230
    sget-boolean p3, Lcom/coloros/c/a/a/a;->a:Z

    const-string v0, "FindPhoneLogoutControl"

    if-eqz p3, :cond_0

    .line 2231
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "notifyFindPhoneClose, ticketNo = "

    invoke-virtual {v1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v1, Lcom/coloros/c/a/a/b$a;->closing_findphone:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 2591
    iget-object v1, p0, Lcom/coloros/c/a/a/a;->o:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    if-nez v1, :cond_1

    .line 2592
    new-instance v1, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    sget v2, Lcom/coloros/c/a/a/b$b;->Theme_ColorSupport_Dialog_Alert:I

    invoke-direct {v1, p1, v2}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/coloros/c/a/a/a;->o:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    .line 2593
    iget-object v1, p0, Lcom/coloros/c/a/a/a;->o:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-virtual {v1}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v2, 0x7f6

    .line 2595
    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 2596
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2598
    sget v3, Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_HOME_MENU_KEY:I

    invoke-static {v2, v3}, Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;->setHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;I)V

    .line 2599
    sget v3, Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;->DISABLE_STATUS_BAR:I

    invoke-static {v2, v3}, Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;->setStatusBarStateByWindowManager(Landroid/view/WindowManager$LayoutParams;I)V

    .line 2600
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2604
    :cond_1
    iget-object v1, p0, Lcom/coloros/c/a/a/a;->o:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-virtual {v1, p3}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2605
    sget-boolean p3, Lcom/coloros/c/a/a/a;->a:Z

    if-eqz p3, :cond_2

    .line 2606
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "showFindPhoneProgressDialog, mApplyingDialog.isShowing"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/coloros/c/a/a/a;->o:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-virtual {v1}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->isShowing()Z

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    :cond_2
    iget-object p3, p0, Lcom/coloros/c/a/a/a;->o:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-virtual {p3}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->isShowing()Z

    move-result p3

    if-nez p3, :cond_3

    .line 2609
    iget-object p3, p0, Lcom/coloros/c/a/a/a;->o:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-virtual {p3}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->show()V

    .line 2234
    :cond_3
    new-instance p3, Lcom/coloros/c/a/a/a$3;

    invoke-direct {p3, p0, p1, p2}, Lcom/coloros/c/a/a/a$3;-><init>(Lcom/coloros/c/a/a/a;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/coloros/c/a/a/a;->a(Landroid/content/Context;Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 2256
    iget-object p0, p0, Lcom/coloros/c/a/a/a;->l:Lcom/coloros/c/a/a/a$b;

    if-eqz p0, :cond_4

    const/4 p1, 0x0

    .line 2257
    invoke-interface {p0, p1}, Lcom/coloros/c/a/a/a$b;->a(Z)V

    :cond_4
    return-void
.end method

.method static synthetic a(Lcom/coloros/c/a/a/a;Landroid/os/Message;)V
    .locals 8

    .line 3396
    sget-boolean v0, Lcom/coloros/c/a/a/a;->a:Z

    const-string v1, "FindPhoneLogoutControl"

    if-eqz v0, :cond_0

    .line 3397
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "receiveFindPhoneMessage, msg = "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_f

    .line 3399
    invoke-direct {p0}, Lcom/coloros/c/a/a/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 3402
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 3403
    iget-object v2, p0, Lcom/coloros/c/a/a/a;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v2, "KEY_EXTRA_REQUEST_ENTITY"

    .line 3404
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;

    .line 3405
    sget-boolean v2, Lcom/coloros/c/a/a/a;->a:Z

    if-eqz v2, :cond_3

    .line 3406
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "receiveFindPhoneMessage, entity = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_2

    const-string v3, "null"

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;->type:Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v2, 0x0

    .line 3427
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x1fa

    const/4 v5, 0x1

    if-eq v3, v4, :cond_5

    if-nez v0, :cond_4

    goto :goto_1

    .line 3431
    :cond_4
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x2a4

    if-ne p1, v3, :cond_7

    const-string p1, "exception : ERROR_WHAT_REQUEST_MODULE_ISNEED_VERIFY_PWD"

    .line 3432
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3433
    iget-object p1, p0, Lcom/coloros/c/a/a/a;->k:Lcom/coloros/c/a/a/a$c;

    if-eqz p1, :cond_6

    .line 3434
    invoke-interface {p1, v5}, Lcom/coloros/c/a/a/a$c;->a(Z)V

    goto :goto_2

    :cond_5
    :goto_1
    const-string p1, "exception : ERROR_WHAT_REQUEST_DATA_NULL || entity == null"

    .line 3428
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3429
    invoke-direct {p0}, Lcom/coloros/c/a/a/a;->c()V

    :cond_6
    :goto_2
    move v2, v5

    :cond_7
    if-nez v2, :cond_f

    .line 3409
    iget-object p1, v0, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;->type:Ljava/lang/String;

    const-string v2, "TYPE_REQUEST_IS_NEED_VERIFY_PWD"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const-wide/16 v2, 0x3e8

    const-string v4, ", coast time = "

    const/4 v5, 0x0

    if-eqz p1, :cond_b

    .line 3469
    iget-object p1, p0, Lcom/coloros/c/a/a/a;->m:Lcom/coloros/c/a/a/a$d;

    if-eqz p1, :cond_8

    .line 3470
    invoke-virtual {p1}, Lcom/coloros/c/a/a/a$d;->cancel()V

    .line 3471
    iput-object v5, p0, Lcom/coloros/c/a/a/a;->m:Lcom/coloros/c/a/a/a$d;

    .line 3473
    :cond_8
    iget-object p1, v0, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;->bundle:Landroid/os/Bundle;

    const-string v0, "REPLY_MSG_BUNDLE_RESULT_ISNEED_VRRIFYPWD"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 3475
    sget-boolean v0, Lcom/coloros/c/a/a/a;->a:Z

    if-eqz v0, :cond_9

    .line 3476
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "receiveIsNeedVerifyPsw, isOpen = "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/coloros/c/a/a/a;->c:J

    sub-long/2addr v4, v6

    div-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    :cond_9
    invoke-direct {p0, p1}, Lcom/coloros/c/a/a/a;->a(Z)Z

    move-result p0

    if-nez p0, :cond_a

    const-string p0, "already to receive timout callback TYPE_REQUEST_IS_NEED_VERIFY_PWD"

    .line 3479
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void

    .line 3411
    :cond_b
    iget-object p1, v0, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;->type:Ljava/lang/String;

    const-string v6, "TYPE_REQUEST_REQUEST_LOGOUT"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 4451
    iget-object p1, p0, Lcom/coloros/c/a/a/a;->n:Lcom/coloros/c/a/a/a$d;

    if-eqz p1, :cond_c

    .line 4452
    invoke-virtual {p1}, Lcom/coloros/c/a/a/a$d;->cancel()V

    .line 4453
    iput-object v5, p0, Lcom/coloros/c/a/a/a;->n:Lcom/coloros/c/a/a/a$d;

    .line 4455
    :cond_c
    iget-object p1, v0, Lcom/platform/usercenter/sdk/verify/logout/UCLogoutTransferEntity;->bundle:Landroid/os/Bundle;

    const-string v0, "REPLY_MSG_BUNDLE_RESULT_LOGOUT_TICKETNO_ISSUCCESS"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 4457
    sget-boolean v0, Lcom/coloros/c/a/a/a;->a:Z

    if-eqz v0, :cond_d

    .line 4458
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "receiveFindPhoneLogoutResult, isSuccess = "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/coloros/c/a/a/a;->d:J

    sub-long/2addr v4, v6

    div-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4460
    :cond_d
    invoke-direct {p0, p1}, Lcom/coloros/c/a/a/a;->b(Z)Z

    move-result p1

    if-nez p1, :cond_e

    const-string p1, "already to receive timout callback TYPE_REQUEST_REQUEST_LOGOUT"

    .line 4461
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3413
    :cond_e
    invoke-direct {p0}, Lcom/coloros/c/a/a/a;->e()V

    :cond_f
    :goto_3
    return-void
.end method

.method static synthetic a()Z
    .locals 1

    .line 47
    sget-boolean v0, Lcom/coloros/c/a/a/a;->a:Z

    return v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/Runnable;)Z
    .locals 4

    .line 491
    invoke-direct {p0}, Lcom/coloros/c/a/a/a;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 493
    iget-object p1, p0, Lcom/coloros/c/a/a/a;->i:Lcom/coloros/c/a/a/c;

    invoke-virtual {p1, p2}, Lcom/coloros/c/a/a/c;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return v1

    .line 497
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.oppo.usercenter.sdk.findphone.logout"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.coloros.findmyphone"

    .line 498
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 501
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_2

    goto :goto_0

    .line 504
    :cond_2
    iget-object v2, p0, Lcom/coloros/c/a/a/a;->g:Lcom/coloros/c/a/a/a$a;

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/coloros/c/a/a/a;->h:Z

    if-nez v2, :cond_3

    .line 505
    invoke-direct {p0}, Lcom/coloros/c/a/a/a;->b()V

    .line 507
    :cond_3
    iget-object v2, p0, Lcom/coloros/c/a/a/a;->g:Lcom/coloros/c/a/a/a$a;

    if-eqz v2, :cond_4

    .line 1546
    iput-object p2, v2, Lcom/coloros/c/a/a/a$a;->c:Ljava/lang/Runnable;

    .line 509
    invoke-virtual {p1, v0, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    return p1

    :cond_4
    const-string p1, "FindPhoneLogoutControl"

    const-string p2, "bindFindPhoneServiceWithTask, mConn is null!"

    .line 511
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return v3
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/coloros/c/a/a/a;->f:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/c/a/a/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/c/a/a/a;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Z)Z
    .locals 2

    const-string v0, "TYPE_REQUEST_IS_NEED_VERIFY_PWD"

    .line 320
    invoke-direct {p0, v0}, Lcom/coloros/c/a/a/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/coloros/c/a/a/a;->k:Lcom/coloros/c/a/a/a$c;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 323
    invoke-interface {v0, p1}, Lcom/coloros/c/a/a/a$c;->a(Z)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic b(Lcom/coloros/c/a/a/a;)Landroid/os/Messenger;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/c/a/a/a;->e:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/c/a/a/a;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/coloros/c/a/a/a;->j:Landroid/os/Messenger;

    return-object p1
.end method

.method private b()V
    .locals 1

    .line 263
    new-instance v0, Lcom/coloros/c/a/a/a$4;

    invoke-direct {v0, p0}, Lcom/coloros/c/a/a/a$4;-><init>(Lcom/coloros/c/a/a/a;)V

    iput-object v0, p0, Lcom/coloros/c/a/a/a;->g:Lcom/coloros/c/a/a/a$a;

    return-void
.end method

.method private b(Z)Z
    .locals 2

    .line 330
    sget-boolean v0, Lcom/coloros/c/a/a/a;->a:Z

    if-eqz v0, :cond_0

    .line 331
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "callbackIsFindPhoneLogoutSuccess, isLogoutSuccess = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FindPhoneLogoutControl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const-string v1, "TYPE_REQUEST_REQUEST_LOGOUT"

    .line 334
    invoke-direct {p0, v1}, Lcom/coloros/c/a/a/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    iget-object v1, p0, Lcom/coloros/c/a/a/a;->l:Lcom/coloros/c/a/a/a$b;

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 337
    invoke-interface {v1, p1}, Lcom/coloros/c/a/a/a$b;->a(Z)V

    :cond_1
    return v0
.end method

.method static synthetic c(Lcom/coloros/c/a/a/a;)Ljava/util/HashMap;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/c/a/a/a;->f:Ljava/util/HashMap;

    return-object p0
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x1

    .line 442
    invoke-direct {p0, v0}, Lcom/coloros/c/a/a/a;->a(Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 443
    invoke-direct {p0, v0}, Lcom/coloros/c/a/a/a;->b(Z)Z

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/coloros/c/a/a/a;)V
    .locals 2

    .line 3347
    new-instance v0, Lcom/coloros/c/a/a/a$6;

    invoke-direct {v0, p0}, Lcom/coloros/c/a/a/a$6;-><init>(Lcom/coloros/c/a/a/a;)V

    iput-object v0, p0, Lcom/coloros/c/a/a/a;->m:Lcom/coloros/c/a/a/a$d;

    .line 3354
    sget-boolean v0, Lcom/coloros/c/a/a/a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FindPhoneLogoutControl"

    const-string v1, "postVerifyPwdTimeoutTask, mTimerForGetIsOpen.start(), timeout = 10000"

    .line 3355
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    :cond_0
    iget-object p0, p0, Lcom/coloros/c/a/a/a;->m:Lcom/coloros/c/a/a/a$d;

    invoke-virtual {p0}, Lcom/coloros/c/a/a/a$d;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private d()Z
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/coloros/c/a/a/a;->g:Lcom/coloros/c/a/a/a$a;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/coloros/c/a/a/a$a;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private e()V
    .locals 3

    const-string v0, "FindPhoneLogoutControl"

    const-string v1, "dismissFindPhoneProgressDialog"

    .line 614
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :try_start_0
    iget-object v1, p0, Lcom/coloros/c/a/a/a;->o:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coloros/c/a/a/a;->o:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-virtual {v1}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    iget-object v1, p0, Lcom/coloros/c/a/a/a;->o:Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;

    invoke-virtual {v1}, Lcom/color/support/dialog/app/ColorRotatingSpinnerDialog;->dismiss()V

    .line 618
    sget-boolean v1, Lcom/coloros/c/a/a/a;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "dismissFindPhoneProgressDialog, dismiss success!"

    .line 619
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v1

    .line 623
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dismissProgressDialog, exception e = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic e(Lcom/coloros/c/a/a/a;)Z
    .locals 1

    const/4 v0, 0x1

    .line 47
    invoke-direct {p0, v0}, Lcom/coloros/c/a/a/a;->a(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic f(Lcom/coloros/c/a/a/a;)V
    .locals 2

    .line 3364
    new-instance v0, Lcom/coloros/c/a/a/a$7;

    invoke-direct {v0, p0}, Lcom/coloros/c/a/a/a$7;-><init>(Lcom/coloros/c/a/a/a;)V

    iput-object v0, p0, Lcom/coloros/c/a/a/a;->n:Lcom/coloros/c/a/a/a$d;

    .line 3371
    sget-boolean v0, Lcom/coloros/c/a/a/a;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "FindPhoneLogoutControl"

    const-string v1, "postLogoutTimeoutTask, mTimerForLogout.start(), timeout time = 20000"

    .line 3372
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3374
    :cond_0
    iget-object p0, p0, Lcom/coloros/c/a/a/a;->n:Lcom/coloros/c/a/a/a$d;

    invoke-virtual {p0}, Lcom/coloros/c/a/a/a$d;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method static synthetic g(Lcom/coloros/c/a/a/a;)Z
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, v0}, Lcom/coloros/c/a/a/a;->b(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcom/coloros/c/a/a/a;)Lcom/coloros/c/a/a/c;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/c/a/a/a;->i:Lcom/coloros/c/a/a/c;

    return-object p0
.end method

.method static synthetic i(Lcom/coloros/c/a/a/a;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/c/a/a/a;->p:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic j(Lcom/coloros/c/a/a/a;)Landroid/content/Context;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/coloros/c/a/a/a;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic k(Lcom/coloros/c/a/a/a;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/coloros/c/a/a/a;->c()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    .line 519
    sget-boolean v0, Lcom/coloros/c/a/a/a;->a:Z

    const-string v1, "FindPhoneLogoutControl"

    if-eqz v0, :cond_1

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "unbindService, mHasBound = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/coloros/c/a/a/a;->g:Lcom/coloros/c/a/a/a$a;

    if-nez v2, :cond_0

    const-string v2, "mConn is null."

    goto :goto_0

    :cond_0
    iget-boolean v2, v2, Lcom/coloros/c/a/a/a$a;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/coloros/c/a/a/a;->g:Lcom/coloros/c/a/a/a$a;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/coloros/c/a/a/a$a;->b:Z

    if-eqz v0, :cond_2

    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/coloros/c/a/a/a;->g:Lcom/coloros/c/a/a/a$a;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 526
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "unbindService, exception e = "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/coloros/c/a/a/a;->e()V

    return-void
.end method
