.class final Lcom/android/settings/users/UserSettings$a;
.super Ljava/lang/Object;
.source "UserSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/android/settings/dashboard/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/f;)V
    .locals 0

    .line 1303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1304
    iput-object p1, p0, Lcom/android/settings/users/UserSettings$a;->a:Landroid/content/Context;

    .line 1305
    iput-object p2, p0, Lcom/android/settings/users/UserSettings$a;->b:Lcom/android/settings/dashboard/f;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1311
    iget-object p1, p0, Lcom/android/settings/users/UserSettings$a;->a:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 1312
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 1311
    invoke-virtual {p1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1313
    iget-object v0, p0, Lcom/android/settings/users/UserSettings$a;->b:Lcom/android/settings/dashboard/f;

    iget-object v1, p0, Lcom/android/settings/users/UserSettings$a;->a:Landroid/content/Context;

    const v2, 0x7f121865

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object p1, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/dashboard/f;->a(Lcom/android/settings/dashboard/f$b;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
