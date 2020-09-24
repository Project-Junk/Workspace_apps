.class public Lcom/coloros/settings/feature/multiuser/UserCreateConfigFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserCreateConfigFragment.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/16 v0, -0xa

    .line 33
    iput v0, p0, Lcom/coloros/settings/feature/multiuser/UserCreateConfigFragment;->a:I

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 1

    .line 62
    iget p1, p0, Lcom/coloros/settings/feature/multiuser/UserCreateConfigFragment;->a:I

    const/16 v0, -0xa

    if-eq p1, v0, :cond_0

    .line 1070
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/UserCreateConfigFragment;->finishFragment()V

    return-void
.end method

.method public static synthetic lambda$QWYS0RYTRdW-yykRzUj7OS02oHg(Lcom/coloros/settings/feature/multiuser/UserCreateConfigFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/multiuser/UserCreateConfigFragment;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$dq3cWDULf-9j9Zkn0BPEGOfEgjM(Lcom/coloros/settings/feature/multiuser/UserCreateConfigFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/multiuser/UserCreateConfigFragment;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/UserCreateConfigFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "create_config_user_id"

    const/16 v1, -0xa

    .line 41
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/multiuser/UserCreateConfigFragment;->a:I

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/coloros/settings/feature/multiuser/UserCreateConfigFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d0387

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    const p2, 0x7f0a0353

    .line 1057
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 1058
    new-instance p3, Lcom/coloros/settings/feature/multiuser/-$$Lambda$UserCreateConfigFragment$QWYS0RYTRdW-yykRzUj7OS02oHg;

    invoke-direct {p3, p0}, Lcom/coloros/settings/feature/multiuser/-$$Lambda$UserCreateConfigFragment$QWYS0RYTRdW-yykRzUj7OS02oHg;-><init>(Lcom/coloros/settings/feature/multiuser/UserCreateConfigFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0354

    .line 1060
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 1061
    new-instance p3, Lcom/coloros/settings/feature/multiuser/-$$Lambda$UserCreateConfigFragment$dq3cWDULf-9j9Zkn0BPEGOfEgjM;

    invoke-direct {p3, p0}, Lcom/coloros/settings/feature/multiuser/-$$Lambda$UserCreateConfigFragment$dq3cWDULf-9j9Zkn0BPEGOfEgjM;-><init>(Lcom/coloros/settings/feature/multiuser/UserCreateConfigFragment;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object p1
.end method
