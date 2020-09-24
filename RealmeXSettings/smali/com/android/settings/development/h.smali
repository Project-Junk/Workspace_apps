.class public final Lcom/android/settings/development/h;
.super Lcom/android/settingslib/development/b;
.source "BugReportPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field private final a:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 33
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "user"

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/development/h;->a:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "bugreport"

    return-object v0
.end method

.method public final isAvailable()Z
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/android/settings/development/h;->a:Landroid/os/UserManager;

    const-string v1, "no_debugging_features"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
