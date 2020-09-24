.class final Lcom/android/settings/applications/manageapplications/ManageApplications$b;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Lcom/android/settings/dashboard/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/android/settings/dashboard/f;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/f;)V
    .locals 0

    .line 1696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1697
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$b;->a:Landroid/content/Context;

    .line 1698
    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$b;->b:Lcom/android/settings/dashboard/f;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/f;B)V
    .locals 0

    .line 1691
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$b;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/f;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1704
    new-instance p1, Lcom/android/settings/applications/manageapplications/ManageApplications$b$1;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$b;->a:Landroid/content/Context;

    .line 1705
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {p1, p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$b$1;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$b;Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 1711
    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$b$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method
