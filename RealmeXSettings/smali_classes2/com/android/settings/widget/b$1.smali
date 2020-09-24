.class final Lcom/android/settings/widget/b$1;
.super Ljava/lang/Object;
.source "EntityHeaderController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/b;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/widget/b;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/b;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/android/settings/widget/b$1;->a:Lcom/android/settings/widget/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 299
    iget-object p1, p0, Lcom/android/settings/widget/b$1;->a:Lcom/android/settings/widget/b;

    invoke-static {p1}, Lcom/android/settings/widget/b;->a(Lcom/android/settings/widget/b;)Lcom/coloros/settings/adaptor/EntityHeaderControllerAdaptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/adaptor/EntityHeaderControllerAdaptor;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 300
    const-class v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    const v1, 0x7f1201f8

    iget-object p1, p0, Lcom/android/settings/widget/b$1;->a:Lcom/android/settings/widget/b;

    .line 302
    invoke-static {p1}, Lcom/android/settings/widget/b;->b(Lcom/android/settings/widget/b;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/android/settings/widget/b$1;->a:Lcom/android/settings/widget/b;

    invoke-static {p1}, Lcom/android/settings/widget/b;->c(Lcom/android/settings/widget/b;)I

    move-result v3

    iget-object p1, p0, Lcom/android/settings/widget/b$1;->a:Lcom/android/settings/widget/b;

    invoke-static {p1}, Lcom/android/settings/widget/b;->d(Lcom/android/settings/widget/b;)Landroidx/fragment/app/Fragment;

    move-result-object v4

    const/4 v5, 0x0

    iget-object p1, p0, Lcom/android/settings/widget/b$1;->a:Lcom/android/settings/widget/b;

    .line 303
    invoke-static {p1}, Lcom/android/settings/widget/b;->e(Lcom/android/settings/widget/b;)I

    move-result v6

    .line 300
    invoke-static/range {v0 .. v6}, Lcom/android/settings/applications/AppInfoBase;->a(Ljava/lang/Class;ILjava/lang/String;ILandroidx/fragment/app/Fragment;II)V

    :cond_0
    return-void
.end method
