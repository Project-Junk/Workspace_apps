.class final Lcom/android/settings/accounts/AccountPreferenceController$a;
.super Landroid/content/BroadcastReceiver;
.source "AccountPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/android/settings/accounts/AccountPreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/accounts/AccountPreferenceController;)V
    .locals 0

    .line 609
    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$a;->b:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/accounts/AccountPreferenceController;B)V
    .locals 0

    .line 609
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceController$a;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 614
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 615
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received broadcast: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountPrefController"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 616
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 617
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 625
    :cond_0
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

    .line 619
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$a;->b:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {p1}, Lcom/android/settings/accounts/AccountPreferenceController;->a(Lcom/android/settings/accounts/AccountPreferenceController;)V

    .line 621
    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$a;->b:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {p1}, Lcom/android/settings/accounts/AccountPreferenceController;->b(Lcom/android/settings/accounts/AccountPreferenceController;)V

    .line 622
    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController$a;->b:Lcom/android/settings/accounts/AccountPreferenceController;

    invoke-static {p1}, Lcom/android/settings/accounts/AccountPreferenceController;->c(Lcom/android/settings/accounts/AccountPreferenceController;)V

    return-void
.end method
