.class final Lcom/android/settings/applications/manageapplications/ManageApplications$b$1;
.super Lcom/android/settings/applications/t;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications$b;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/applications/manageapplications/ManageApplications$b;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/manageapplications/ManageApplications$b;Landroid/content/Context;Landroid/content/pm/PackageManager;)V
    .locals 0

    .line 1705
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$b$1;->a:Lcom/android/settings/applications/manageapplications/ManageApplications$b;

    const/4 p1, -0x1

    invoke-direct {p0, p2, p1, p3}, Lcom/android/settings/applications/t;-><init>(Landroid/content/Context;ILandroid/content/pm/PackageManager;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    .line 1708
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$b$1;->a:Lcom/android/settings/applications/manageapplications/ManageApplications$b;

    .line 2691
    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications$b;->b:Lcom/android/settings/dashboard/f;

    .line 1708
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$b$1;->a:Lcom/android/settings/applications/manageapplications/ManageApplications$b;

    .line 3691
    iget-object v2, v1, Lcom/android/settings/applications/manageapplications/ManageApplications$b;->a:Landroid/content/Context;

    const/4 v3, 0x1

    .line 1709
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const p1, 0x7f120206

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1708
    invoke-virtual {v0, v1, p1}, Lcom/android/settings/dashboard/f;->a(Lcom/android/settings/dashboard/f$b;Ljava/lang/CharSequence;)V

    return-void
.end method
