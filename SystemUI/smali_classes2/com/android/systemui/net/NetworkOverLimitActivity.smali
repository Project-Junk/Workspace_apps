.class public Lcom/android/systemui/net/NetworkOverLimitActivity;
.super Landroid/app/Activity;
.source "NetworkOverLimitActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkOverLimitActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/net/NetworkOverLimitActivity;->snoozePolicy(Landroid/net/NetworkTemplate;)V

    return-void
.end method

.method private static getLimitedDialogTitleForTemplate(Landroid/net/NetworkTemplate;)I
    .locals 3

    const v0, 0x7f1102cf

    .line 110
    :try_start_0
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    const p0, 0x7f1102ce

    return p0

    :catch_0
    move-exception p0

    const-string v1, "NetworkOverLimitActivity"

    const-string v2, "Illegal data, exception = "

    .line 117
    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method private snoozePolicy(Landroid/net/NetworkTemplate;)V
    .locals 1

    const-string p0, "netpolicy"

    .line 89
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 88
    invoke-static {p0}, Landroid/net/INetworkPolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkPolicyManager;

    move-result-object p0

    .line 91
    :try_start_0
    invoke-interface {p0, p1}, Landroid/net/INetworkPolicyManager;->snoozeLimit(Landroid/net/NetworkTemplate;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NetworkOverLimitActivity"

    const-string v0, "problem snoozing network policy"

    .line 93
    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/net/NetworkOverLimitActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkTemplate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-static {p1}, Lcom/android/systemui/net/NetworkOverLimitActivity;->getLimitedDialogTitleForTemplate(Landroid/net/NetworkTemplate;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1102ca

    .line 66
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1102cd

    .line 69
    new-instance v2, Lcom/android/systemui/net/NetworkOverLimitActivity$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/net/NetworkOverLimitActivity$1;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;Landroid/net/NetworkTemplate;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 77
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 78
    new-instance v0, Lcom/android/systemui/net/NetworkOverLimitActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/net/NetworkOverLimitActivity$2;-><init>(Lcom/android/systemui/net/NetworkOverLimitActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 84
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void

    :catch_0
    move-exception p1

    const-string v0, "NetworkOverLimitActivity"

    const-string v1, "Illegal data, exception = "

    .line 59
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/net/NetworkOverLimitActivity;->finish()V

    return-void
.end method
