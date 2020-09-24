.class final Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$b;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "ExpUninstallMultiAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$b;->a:Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final packageDeleted(Ljava/lang/String;I)V
    .locals 0

    .line 62
    iget-object p1, p0, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity$b;->a:Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;

    invoke-virtual {p1}, Lcom/coloros/settings/utils/ExpUninstallMultiAppActivity;->finish()V

    return-void
.end method
