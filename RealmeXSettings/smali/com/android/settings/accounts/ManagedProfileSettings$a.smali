.class final Lcom/android/settings/accounts/ManagedProfileSettings$a;
.super Landroid/content/BroadcastReceiver;
.source "ManagedProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/ManagedProfileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/accounts/ManagedProfileSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/accounts/ManagedProfileSettings;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/settings/accounts/ManagedProfileSettings$a;->a:Lcom/android/settings/accounts/ManagedProfileSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/accounts/ManagedProfileSettings;B)V
    .locals 0

    .line 136
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/ManagedProfileSettings$a;-><init>(Lcom/android/settings/accounts/ManagedProfileSettings;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received broadcast: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ManagedProfileSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 145
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, -0x2710

    const-string v0, "android.intent.extra.user_handle"

    .line 146
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/android/settings/accounts/ManagedProfileSettings$a;->a:Lcom/android/settings/accounts/ManagedProfileSettings;

    .line 147
    invoke-static {p2}, Lcom/android/settings/accounts/ManagedProfileSettings;->a(Lcom/android/settings/accounts/ManagedProfileSettings;)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    if-ne p1, p2, :cond_1

    .line 148
    iget-object p1, p0, Lcom/android/settings/accounts/ManagedProfileSettings$a;->a:Lcom/android/settings/accounts/ManagedProfileSettings;

    invoke-virtual {p1}, Lcom/android/settings/accounts/ManagedProfileSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_1
    return-void

    .line 153
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot handle received broadcast: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
