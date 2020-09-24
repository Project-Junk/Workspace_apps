.class final Lcom/android/settings/accounts/WorkModePreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "WorkModePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/WorkModePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/accounts/WorkModePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/WorkModePreferenceController;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/android/settings/accounts/WorkModePreferenceController$1;->a:Lcom/android/settings/accounts/WorkModePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 127
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received broadcast: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WorkModeController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 138
    :cond_1
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

    :cond_2
    :goto_0
    const/16 p1, -0x2710

    const-string v0, "android.intent.extra.user_handle"

    .line 132
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/android/settings/accounts/WorkModePreferenceController$1;->a:Lcom/android/settings/accounts/WorkModePreferenceController;

    .line 133
    invoke-static {p2}, Lcom/android/settings/accounts/WorkModePreferenceController;->access$000(Lcom/android/settings/accounts/WorkModePreferenceController;)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    if-ne p1, p2, :cond_3

    .line 134
    iget-object p1, p0, Lcom/android/settings/accounts/WorkModePreferenceController$1;->a:Lcom/android/settings/accounts/WorkModePreferenceController;

    invoke-static {p1}, Lcom/android/settings/accounts/WorkModePreferenceController;->access$100(Lcom/android/settings/accounts/WorkModePreferenceController;)Landroidx/preference/Preference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/accounts/WorkModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_3
    return-void
.end method
