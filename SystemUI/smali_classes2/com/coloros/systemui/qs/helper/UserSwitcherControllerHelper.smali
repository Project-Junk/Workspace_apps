.class public Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;
.super Ljava/lang/Object;
.source "UserSwitcherControllerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper$UserCreatingDialog;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UserSwitcherControllerHelper"

.field private static volatile sInstance:Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;


# instance fields
.field private mAddUserDialog:Landroid/app/Dialog;

.field private final mBgHandler:Landroid/os/Handler;

.field private mExitGuestDialog:Landroid/app/Dialog;

.field private mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mMainHandler:Landroid/os/Handler;

.field private mNewSessionDialog:Lcolor/support/v7/app/AlertDialog;

.field private mSystemDialogListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

.field private mUserCreatingDialog:Landroid/app/Dialog;

.field private final mUserManager:Landroid/os/UserManager;

.field private mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    new-instance v0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$dJr3DNraORTlPkCdQ6ShiNm62RQ;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$dJr3DNraORTlPkCdQ6ShiNm62RQ;-><init>(Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;)V

    iput-object v0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mSystemDialogListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    .line 69
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mUserManager:Landroid/os/UserManager;

    .line 70
    const-class p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iput-object p1, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 71
    new-instance p1, Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/Dependency;->QS_BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mBgHandler:Landroid/os/Handler;

    .line 72
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mMainHandler:Landroid/os/Handler;

    .line 73
    invoke-static {}, Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mSystemDialogListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;->addListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    .line 74
    new-instance p1, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$fpNabsQpIBUOUvd6_1zxUI49oj4;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$fpNabsQpIBUOUvd6_1zxUI49oj4;-><init>(Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;)V

    .line 84
    const-class p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method private createAndSwitchToNewUser(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;)V
    .locals 5

    .line 195
    invoke-direct {p0, p2}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->showUserCreatingDialog(Landroid/content/Context;)V

    .line 196
    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mUserManager:Landroid/os/UserManager;

    const v1, 0x7f11087c

    .line 197
    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 196
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    const-string v1, "UserSwitcherControllerHelper"

    const-string v3, "Statusbar"

    if-nez v0, :cond_0

    const-string p1, "user is null"

    .line 201
    invoke-static {v3, v1, p1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    invoke-direct {p0, p2}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->showErrorMessage(Landroid/content/Context;)V

    return-void

    .line 205
    :cond_0
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 207
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 206
    invoke-static {v4, v0, v2}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 208
    iget-object v4, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4, v0, v2}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchToUserId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-direct {p0}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->dismissUserCreatingDialog()V

    .line 211
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->switchToUserId(I)V

    const-string p0, "add_new_user"

    .line 214
    invoke-static {p2, p0}, Lcom/coloros/systemui/qs/helper/QsStatisticUtil;->collectShortcutsCenterEvent(Landroid/content/Context;Ljava/lang/String;)V

    const-string p0, "switch_to_user"

    const-string p1, "2"

    .line 215
    invoke-static {p2, p0, p1}, Lcom/coloros/systemui/qs/helper/QsStatisticUtil;->collectShortcutsCenterEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dismissUserCreatingDialog()V
    .locals 2

    .line 256
    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$Mwr5oFvy7p4ozHVwUROEJQH7HOs;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$Mwr5oFvy7p4ozHVwUROEJQH7HOs;-><init>(Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;
    .locals 2

    .line 58
    sget-object v0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->sInstance:Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

    if-nez v0, :cond_1

    .line 59
    const-class v0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->sInstance:Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->sInstance:Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

    .line 63
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 65
    :cond_1
    :goto_0
    sget-object p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->sInstance:Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

    return-object p0
.end method

.method private static setWindowOnTop(Landroid/app/Dialog;)V
    .locals 1

    .line 187
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x7de

    invoke-virtual {p0, v0}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x7e1

    invoke-virtual {p0, v0}, Landroid/view/Window;->setType(I)V

    :goto_0
    return-void
.end method

.method private showErrorMessage(Landroid/content/Context;)V
    .locals 1

    const p0, 0x7f110880

    .line 265
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 266
    invoke-virtual {p0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 267
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showUserCreatingDialog(Landroid/content/Context;)V
    .locals 2

    .line 245
    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$eYMHxoGq7uvgsjJyCba7n_2uR4M;

    invoke-direct {v1, p0, p1}, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$eYMHxoGq7uvgsjJyCba7n_2uR4M;-><init>(Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private wipeGuestSession(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4

    .line 121
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->showUserCreatingDialog(Landroid/content/Context;)V

    const-string v0, "user"

    .line 122
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 124
    invoke-virtual {v0, p2}, Landroid/os/UserManager;->markGuestForDeletion(I)Z

    move-result v1

    const-string v2, "UserSwitcherControllerHelper"

    const-string v3, "Statusbar"

    if-nez v1, :cond_0

    .line 126
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t mark the guest for deletion for user "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, v2, p2}, Lcom/coloros/common/util/LogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->showErrorMessage(Landroid/content/Context;)V

    return-void

    .line 130
    :cond_0
    invoke-virtual {v0, p1, p3}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p2

    const-string p3, "create_guest_user"

    .line 131
    invoke-static {p1, p3}, Lcom/coloros/systemui/qs/helper/QsStatisticUtil;->collectShortcutsCenterEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->dismissUserCreatingDialog()V

    if-nez p2, :cond_1

    :try_start_0
    const-string p2, "Could not create new guest, switching back to system user"

    .line 136
    invoke-static {v3, v2, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->showErrorMessage(Landroid/content/Context;)V

    return-void

    .line 140
    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p3

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {p3, p2}, Landroid/app/IActivityManager;->switchUser(I)Z

    const-string p2, "switch_to_guest_type"

    const-string p3, "0"

    .line 141
    invoke-static {p1, p2, p3}, Lcom/coloros/systemui/qs/helper/QsStatisticUtil;->collectShortcutsCenterEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "switch_to_user"

    const-string p3, "3"

    .line 142
    invoke-static {p1, p2, p3}, Lcom/coloros/systemui/qs/helper/QsStatisticUtil;->collectShortcutsCenterEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p2, "Couldn\'t wipe session because ActivityManager or WindowManager is dead"

    .line 144
    invoke-static {v3, v2, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->showErrorMessage(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addUserDialog(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;)Lcolor/support/v7/app/AlertDialog;
    .locals 2

    .line 151
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f120007

    invoke-direct {v0, p2, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f110875

    .line 152
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110873

    .line 153
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$-hGENCwMM6kU2yESJVi3TZJMEzk;

    invoke-direct {v1, p0, p1, p2}, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$-hGENCwMM6kU2yESJVi3TZJMEzk;-><init>(Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;)V

    const p1, 0x104000a

    .line 154
    invoke-virtual {v0, p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$QTEvNzsCPWgWv4J-iTwDQeIzxtk;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$QTEvNzsCPWgWv4J-iTwDQeIzxtk;-><init>(Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;)V

    const/high16 v0, 0x1040000

    .line 161
    invoke-virtual {p1, v0, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 164
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mAddUserDialog:Landroid/app/Dialog;

    .line 165
    iget-object p1, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mAddUserDialog:Landroid/app/Dialog;

    invoke-static {p1}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->setWindowOnTop(Landroid/app/Dialog;)V

    .line 166
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mAddUserDialog:Landroid/app/Dialog;

    check-cast p0, Lcolor/support/v7/app/AlertDialog;

    return-object p0
.end method

.method public createNewGuestUser(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->collapsePanels()V

    .line 221
    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$Wsfe8JsHuaxLctM9mnJvIVkIfmI;

    invoke-direct {v1, p0, p1, p2}, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$Wsfe8JsHuaxLctM9mnJvIVkIfmI;-><init>(Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public exitGuestDialog(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;II)Lcolor/support/v7/app/AlertDialog;
    .locals 8

    .line 170
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f120007

    invoke-direct {v0, p2, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f11022e

    .line 171
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f11022d

    .line 172
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v7, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$_GqVKujbYi8y9iV9_Y66D6qTBd4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$_GqVKujbYi8y9iV9_Y66D6qTBd4;-><init>(Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController;II)V

    const p1, 0x7f11035c

    .line 173
    invoke-virtual {v0, p1, v7}, Lcolor/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$FhO-EaWNX6cJTT8JQsSwLKFbGoA;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$FhO-EaWNX6cJTT8JQsSwLKFbGoA;-><init>(Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;)V

    const/high16 p3, 0x1040000

    .line 178
    invoke-virtual {p1, p3, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mExitGuestDialog:Landroid/app/Dialog;

    .line 182
    iget-object p1, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mExitGuestDialog:Landroid/app/Dialog;

    invoke-static {p1}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->setWindowOnTop(Landroid/app/Dialog;)V

    .line 183
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mExitGuestDialog:Landroid/app/Dialog;

    check-cast p0, Lcolor/support/v7/app/AlertDialog;

    return-object p0
.end method

.method public synthetic lambda$addUserDialog$6$UserSwitcherControllerHelper(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 155
    iget-object p3, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mAddUserDialog:Landroid/app/Dialog;

    invoke-virtual {p3}, Landroid/app/Dialog;->dismiss()V

    .line 156
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 159
    :cond_0
    iget-object p3, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mBgHandler:Landroid/os/Handler;

    new-instance p4, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$kQb0SYHpSxhqk3Nx_c-CegTgf_g;

    invoke-direct {p4, p0, p1, p2}, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$kQb0SYHpSxhqk3Nx_c-CegTgf_g;-><init>(Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$addUserDialog$7$UserSwitcherControllerHelper(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mAddUserDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method public synthetic lambda$createNewGuestUser$10$UserSwitcherControllerHelper(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 222
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->showUserCreatingDialog(Landroid/content/Context;)V

    const-string v0, "user"

    .line 223
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 225
    invoke-virtual {v0, p1, p2}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p2

    const-string v0, "create_guest_user"

    .line 226
    invoke-static {p1, v0}, Lcom/coloros/systemui/qs/helper/QsStatisticUtil;->collectShortcutsCenterEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 227
    invoke-direct {p0}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->dismissUserCreatingDialog()V

    const-string v0, "UserSwitcherControllerHelper"

    const-string v1, "Statusbar"

    if-nez p2, :cond_0

    :try_start_0
    const-string p2, "Could not create new guest, switching back to system user"

    .line 231
    invoke-static {v1, v0, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->showErrorMessage(Landroid/content/Context;)V

    return-void

    .line 235
    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v2, p2}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p2, "Couldn\'t wipe session because ActivityManager or WindowManager is dead"

    .line 237
    invoke-static {v1, v0, p2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->showErrorMessage(Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$dismissUserCreatingDialog$12$UserSwitcherControllerHelper()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mUserCreatingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mUserCreatingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 259
    iput-object v0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mUserCreatingDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public synthetic lambda$exitGuestDialog$8$UserSwitcherControllerHelper(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController;IILandroid/content/DialogInterface;I)V
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mExitGuestDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    const-string p0, "remove_guest_user"

    .line 175
    invoke-static {p1, p0}, Lcom/coloros/systemui/qs/helper/QsStatisticUtil;->collectShortcutsCenterEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2, p3, p4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->exitGuest(II)V

    return-void
.end method

.method public synthetic lambda$exitGuestDialog$9$UserSwitcherControllerHelper(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mExitGuestDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method public synthetic lambda$new$0$UserSwitcherControllerHelper()V
    .locals 1

    .line 75
    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mAddUserDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mAddUserDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mExitGuestDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mExitGuestDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$new$13$UserSwitcherControllerHelper(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 271
    iget-object p1, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mAddUserDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 272
    iget-object p1, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mAddUserDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 274
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mExitGuestDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 275
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mExitGuestDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$null$1$UserSwitcherControllerHelper(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->wipeGuestSession(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$null$5$UserSwitcherControllerHelper(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;)V
    .locals 0

    .line 159
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->createAndSwitchToNewUser(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;)V

    return-void
.end method

.method public synthetic lambda$showSwitchDialog$2$UserSwitcherControllerHelper(Landroid/content/Context;ILjava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 100
    iget-object p4, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mNewSessionDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p4}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    .line 101
    iget-object p4, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mBgHandler:Landroid/os/Handler;

    new-instance p5, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$zG8mAsbEzCoG6NPdG0hXEWgxa40;

    invoke-direct {p5, p0, p1, p2, p3}, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$zG8mAsbEzCoG6NPdG0hXEWgxa40;-><init>(Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;Landroid/content/Context;ILjava/lang/String;)V

    invoke-virtual {p4, p5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$showSwitchDialog$3$UserSwitcherControllerHelper(ILandroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 103
    iget-object p3, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->switchToUserId(I)V

    const-string p1, "switch_to_guest_type"

    const-string p3, "1"

    .line 104
    invoke-static {p2, p1, p3}, Lcom/coloros/systemui/qs/helper/QsStatisticUtil;->collectShortcutsCenterEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "switch_to_user"

    const-string p3, "3"

    .line 105
    invoke-static {p2, p1, p3}, Lcom/coloros/systemui/qs/helper/QsStatisticUtil;->collectShortcutsCenterEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mNewSessionDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$showSwitchDialog$4$UserSwitcherControllerHelper(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mNewSessionDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->cancel()V

    return-void
.end method

.method public synthetic lambda$showUserCreatingDialog$11$UserSwitcherControllerHelper(Landroid/content/Context;)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mUserCreatingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mUserCreatingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    const/4 v0, 0x0

    .line 248
    iput-object v0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mUserCreatingDialog:Landroid/app/Dialog;

    .line 250
    :cond_0
    new-instance v0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper$UserCreatingDialog;

    const v1, 0x7f12030e

    invoke-direct {v0, p0, p1, v1}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper$UserCreatingDialog;-><init>(Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mUserCreatingDialog:Landroid/app/Dialog;

    .line 251
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mUserCreatingDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public setHostEnvironment(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mHost:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method

.method public showSwitchDialog(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->collapsePanels()V

    .line 93
    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mNewSessionDialog:Lcolor/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mNewSessionDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->cancel()V

    .line 96
    :cond_0
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f120007

    invoke-direct {v0, p1, v1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f110230

    .line 97
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 98
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setDialogType(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f110231

    new-instance v2, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$4HysCDaq7rxp1kiAdZg_9CBsOmw;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$4HysCDaq7rxp1kiAdZg_9CBsOmw;-><init>(Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;Landroid/content/Context;ILjava/lang/String;)V

    .line 99
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p3

    const v0, 0x7f11022f

    new-instance v1, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$lSEVOHEn3O4b_U9WioEonVl5sz4;

    invoke-direct {v1, p0, p2, p1}, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$lSEVOHEn3O4b_U9WioEonVl5sz4;-><init>(Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;ILandroid/content/Context;)V

    .line 102
    invoke-virtual {p3, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f110207

    new-instance p3, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$xGOUUzF08-G4uZvcSK4DYFXLqdY;

    invoke-direct {p3, p0}, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$xGOUUzF08-G4uZvcSK4DYFXLqdY;-><init>(Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;)V

    .line 107
    invoke-virtual {p1, p2, p3}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mNewSessionDialog:Lcolor/support/v7/app/AlertDialog;

    .line 110
    iget-object p1, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mNewSessionDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d8

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 112
    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->mNewSessionDialog:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {p0}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void
.end method
