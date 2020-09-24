.class final Lcom/coloros/settings/feature/appmanager/AppManagerFeature$1;
.super Ljava/lang/Object;
.source "AppManagerFeature.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->initView(Landroid/view/View;Lcom/android/settings/applications/manageapplications/ManageApplications;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$1;->a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    .line 309
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$1;->a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {p2}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$000(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Lcolor/support/v7/widget/SearchView;

    move-result-object p2

    invoke-virtual {p2}, Lcolor/support/v7/widget/SearchView;->clearFocus()V

    .line 310
    iget-object p2, p0, Lcom/coloros/settings/feature/appmanager/AppManagerFeature$1;->a:Lcom/coloros/settings/feature/appmanager/AppManagerFeature;

    invoke-static {p2}, Lcom/coloros/settings/feature/appmanager/AppManagerFeature;->access$100(Lcom/coloros/settings/feature/appmanager/AppManagerFeature;)Lcom/color/support/widget/ColorSearchViewAnimate;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/color/support/widget/ColorSearchViewAnimate;->openSoftInput(Z)V

    :cond_0
    return p1
.end method
