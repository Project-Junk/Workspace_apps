.class public Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ColorQSSecurityText.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$H;,
        Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$Callback;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z

.field protected static final TAG:Ljava/lang/String; = "ColorQSSecurityText"


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mCallback:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$Callback;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Lcolor/support/v7/app/AlertDialog;

.field private mFooterIconId:I

.field private mFooterTextContent:Ljava/lang/CharSequence;

.field protected mHandler:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$H;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private mIsVisible:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private final mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private final mUm:Landroid/os/UserManager;

.field private final mUpdateDisplayState:Ljava/lang/Runnable;

.field private final mUpdateIcon:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ColorQSSecurityText"

    const/4 v1, 0x3

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    new-instance p2, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$Callback;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$Callback;-><init>(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$1;)V

    iput-object p2, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mCallback:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$Callback;

    .line 63
    iput-object p3, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mFooterTextContent:Ljava/lang/CharSequence;

    .line 381
    new-instance p2, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$1;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$1;-><init>(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;)V

    iput-object p2, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mUpdateDisplayState:Ljava/lang/Runnable;

    .line 393
    new-instance p2, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$2;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$2;-><init>(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;)V

    iput-object p2, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mUpdateIcon:Ljava/lang/Runnable;

    .line 76
    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p0, p0}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mMainHandler:Landroid/os/Handler;

    .line 79
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 80
    const-class p1, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/SecurityController;

    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 81
    new-instance p1, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$H;

    sget-object p2, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Looper;

    invoke-direct {p1, p0, p2, p3}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$H;-><init>(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;Landroid/os/Looper;Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$1;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mHandler:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$H;

    .line 82
    iget-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const-string p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mUm:Landroid/os/UserManager;

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;)Ljava/lang/CharSequence;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mFooterTextContent:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mIsVisible:Z

    return p0
.end method

.method static synthetic access$400(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mFooterIconId:I

    return p0
.end method

.method static synthetic access$500(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->handleRefreshState()V

    return-void
.end method

.method static synthetic access$600(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->handleClick()V

    return-void
.end method

.method static synthetic access$700(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;)Lcom/android/systemui/qs/QSTileHost;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object p0
.end method

.method private createDialog()V
    .locals 17

    move-object/from16 v9, p0

    .line 233
    iget-object v0, v9, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isDeviceManaged()Z

    move-result v10

    .line 234
    iget-object v0, v9, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasWorkProfile()Z

    move-result v11

    .line 235
    iget-object v0, v9, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 236
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v12

    .line 237
    iget-object v0, v9, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInCurrentUser()Z

    move-result v13

    .line 238
    iget-object v0, v9, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInWorkProfile()Z

    move-result v14

    .line 239
    iget-object v0, v9, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isNetworkLoggingEnabled()Z

    move-result v15

    .line 240
    iget-object v0, v9, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object v8

    .line 241
    iget-object v0, v9, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileVpnName()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move v1, v10

    move-object v2, v12

    move v3, v13

    move v4, v14

    move v5, v15

    move v6, v11

    move-object/from16 v16, v7

    move-object v7, v8

    move-object v9, v8

    move-object/from16 v8, v16

    .line 243
    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->getDialogMessage(ZLjava/lang/CharSequence;ZZZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialogMessage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " isDeviceManaged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " deviceOwnerOrganization: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " hasCACerts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " hasCACertsInWorkProfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isNetworkLoggingEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " hasWorkProfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " vpnName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " vpnNameWorkProfile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Statusbar"

    const-string v3, "ColorQSSecurityText"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p0

    .line 251
    iget-object v2, v1, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mDialog:Lcolor/support/v7/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 252
    invoke-virtual {v2}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    .line 254
    :cond_0
    invoke-direct {v1, v10, v9, v11}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->getNegativeButtonText(ZLjava/lang/String;Z)I

    move-result v2

    .line 255
    new-instance v3, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v4, v1, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const v5, 0x7f120007

    invoke-direct {v3, v4, v5}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object v4, v1, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mFooterTextContent:Ljava/lang/CharSequence;

    .line 256
    invoke-virtual {v3, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 257
    invoke-virtual {v3, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f110200

    const/4 v4, 0x0

    .line 258
    invoke-virtual {v0, v3, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSSecurityText$ItiFOJW58MeGORljZcCWaPYxzEo;

    invoke-direct {v3, v1, v10, v9, v11}, Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSSecurityText$ItiFOJW58MeGORljZcCWaPYxzEo;-><init>(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;ZLjava/lang/String;Z)V

    .line 259
    invoke-virtual {v0, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    iput-object v0, v1, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mDialog:Lcolor/support/v7/app/AlertDialog;

    .line 272
    iget-object v0, v1, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x7d8

    invoke-virtual {v0, v2}, Landroid/view/Window;->setType(I)V

    .line 273
    iget-object v0, v1, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method

.method private getDialogMessage(ZLjava/lang/CharSequence;ZZZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 0

    .line 280
    invoke-virtual {p0, p1, p2}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->getManagementMessage(ZLjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    .line 285
    :cond_0
    invoke-virtual {p0, p1, p3, p4}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->getCaCertsMessage(ZZZ)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_1

    return-object p2

    .line 290
    :cond_1
    invoke-virtual {p0, p5}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->getNetworkLoggingMessage(Z)Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_2

    return-object p2

    .line 294
    :cond_2
    invoke-virtual {p0, p1, p6, p7, p8}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->getVpnMessage(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_3

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method private getNegativeButtonText(ZLjava/lang/String;Z)I
    .locals 0

    .line 303
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->isShowVpn(ZLjava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f11053d

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const p0, 0x7f110520

    return p0

    :cond_1
    const p0, 0x7f110207

    return p0
.end method

.method private getTitle(Ljava/lang/String;)I
    .locals 0

    if-eqz p1, :cond_0

    const p0, 0x7f110542

    return p0

    :cond_0
    const p0, 0x7f110541

    return p0
.end method

.method private handleClick()V
    .locals 3

    const-string v0, "Statusbar"

    const-string v1, "ColorQSSecurityText"

    const-string v2, "handleClick"

    .line 104
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->showDeviceMonitoringDialog()V

    const/16 p0, 0x39

    .line 107
    invoke-static {p0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p0

    .line 108
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    return-void
.end method

.method private handleRefreshState()V
    .locals 13

    .line 123
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isDeviceManaged()Z

    move-result v0

    .line 124
    iget-object v1, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 125
    iget-object v2, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v11, 0x0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isDemo()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v11

    .line 127
    :goto_0
    iget-object v2, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasWorkProfile()Z

    move-result v4

    .line 128
    iget-object v2, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInCurrentUser()Z

    move-result v5

    .line 129
    iget-object v2, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasCACertInWorkProfile()Z

    move-result v6

    .line 130
    iget-object v2, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->isNetworkLoggingEnabled()Z

    move-result v7

    .line 131
    iget-object v2, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->getPrimaryVpnName()Ljava/lang/String;

    move-result-object v8

    .line 132
    iget-object v2, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileVpnName()Ljava/lang/String;

    move-result-object v9

    .line 133
    iget-object v2, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerOrganizationName()Ljava/lang/CharSequence;

    move-result-object v10

    .line 134
    iget-object v2, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/policy/SecurityController;->getWorkProfileOrganizationName()Ljava/lang/CharSequence;

    move-result-object v12

    if-eqz v0, :cond_1

    if-eqz v1, :cond_3

    :cond_1
    if-nez v5, :cond_3

    if-nez v6, :cond_3

    if-nez v8, :cond_3

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    move v3, v11

    .line 136
    :cond_3
    :goto_1
    iput-boolean v3, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mIsVisible:Z

    move-object v1, p0

    move v2, v0

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v12

    .line 139
    invoke-virtual/range {v1 .. v10}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->getFooterText(ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mFooterTextContent:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    const v11, 0x7f0806e8

    .line 147
    :cond_4
    iget v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mFooterIconId:I

    if-eq v0, v11, :cond_5

    .line 148
    iput v11, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mFooterIconId:I

    .line 149
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mUpdateIcon:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 151
    :cond_5
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mMainHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mUpdateDisplayState:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private isShowVpn(ZLjava/lang/String;Z)Z
    .locals 0

    if-nez p1, :cond_0

    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected getCaCertsMessage(ZZZ)Ljava/lang/CharSequence;
    .locals 0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 329
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const p1, 0x7f110531

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p3, :cond_2

    .line 332
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const p1, 0x7f11052e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 335
    :cond_2
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const p1, 0x7f110527

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getFooterText(ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_b

    if-nez p3, :cond_9

    if-nez p4, :cond_9

    if-eqz p5, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p6, :cond_2

    if-eqz p7, :cond_2

    if-nez p8, :cond_1

    .line 170
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const p1, 0x7f1106d0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 172
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const p1, 0x7f1106d6

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p8, p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-nez p6, :cond_5

    if-eqz p7, :cond_3

    goto :goto_0

    :cond_3
    if-nez p8, :cond_4

    .line 187
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const p1, 0x7f1106cd

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 189
    :cond_4
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const p1, 0x7f1106d3

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p8, p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    if-nez p8, :cond_7

    .line 177
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const p1, 0x7f1106cf

    new-array p2, v1, [Ljava/lang/Object;

    if-eqz p6, :cond_6

    goto :goto_1

    :cond_6
    move-object p6, p7

    :goto_1
    aput-object p6, p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 181
    :cond_7
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const p1, 0x7f1106d5

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p8, p2, v0

    if-eqz p6, :cond_8

    goto :goto_2

    :cond_8
    move-object p6, p7

    :goto_2
    aput-object p6, p2, v1

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_3
    if-nez p8, :cond_a

    .line 161
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const p1, 0x7f1106ce

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 164
    :cond_a
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const p1, 0x7f1106d4

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p8, p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    if-eqz p4, :cond_d

    if-nez p9, :cond_c

    .line 194
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const p1, 0x7f1106cb

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 197
    :cond_c
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const p1, 0x7f1106d2

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p9, p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    if-eqz p3, :cond_e

    .line 202
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const p1, 0x7f1106d1

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    if-eqz p6, :cond_f

    if-eqz p7, :cond_f

    .line 205
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const p1, 0x7f1106d9

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    if-eqz p7, :cond_10

    .line 208
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const p1, 0x7f1106cc

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p7, p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_10
    if-eqz p6, :cond_12

    if-eqz p2, :cond_11

    .line 213
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const p1, 0x7f1106d8

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p6, p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 217
    :cond_11
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const p1, 0x7f1106d7

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p6, p2, v0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getManagementMessage(ZLjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 320
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const p1, 0x7f110533

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 322
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const p1, 0x7f110530

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getNetworkLoggingMessage(Z)Ljava/lang/CharSequence;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 340
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const p1, 0x7f110532

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getVpnMessage(ZZLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 5

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 346
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v1, 0x2

    const v2, 0x7f110537

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_3

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 349
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p3, p1, v3

    aput-object p4, p1, v4

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 352
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const p1, 0x7f110534

    new-array p2, v4, [Ljava/lang/Object;

    if-eqz p3, :cond_2

    goto :goto_0

    :cond_2
    move-object p3, p4

    :goto_0
    aput-object p3, p2, v3

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    if-eqz p4, :cond_4

    .line 357
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    new-array p1, v1, [Ljava/lang/Object;

    aput-object p3, p1, v3

    aput-object p4, p1, v4

    invoke-virtual {p0, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_4
    if-eqz p4, :cond_5

    .line 360
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const p1, 0x7f11052f

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p4, p2, v3

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    .line 364
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const p1, 0x7f110536

    new-array p2, v4, [Ljava/lang/Object;

    aput-object p3, p2, v3

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 367
    :cond_6
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mContext:Landroid/content/Context;

    const p1, 0x7f11053c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_1
    return-object v0
.end method

.method public synthetic lambda$createDialog$0$ColorQSSecurityText(ZLjava/lang/String;ZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 260
    iget-object p4, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p4}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    .line 261
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->isShowVpn(ZLjava/lang/String;Z)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 262
    new-instance p2, Landroid/content/Intent;

    const-string p4, "android.settings.VPN_SETTINGS"

    invoke-direct {p2, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    iget-object p4, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p4, p2, p3}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :cond_0
    if-eqz p1, :cond_1

    .line 267
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.ENTERPRISE_PRIVACY_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 268
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p0, p1, p3}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    .line 226
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.ENTERPRISE_PRIVACY_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    iget-object p2, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p2}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    .line 228
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mHandler:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$H;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public refreshState()V
    .locals 3

    const-string v0, "Statusbar"

    const-string v1, "ColorQSSecurityText"

    const-string v2, "refreshState"

    .line 118
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mHandler:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$H;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setHostEnvironment(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 91
    iget-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mCallback:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$Callback;

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->refreshState()V

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mCallback:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$Callback;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->removeCallback(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public showDeviceMonitoringDialog()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->collapsePanels()V

    .line 114
    invoke-direct {p0}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->createDialog()V

    return-void
.end method
