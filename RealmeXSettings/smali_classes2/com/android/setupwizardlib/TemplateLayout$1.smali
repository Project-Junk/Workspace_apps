.class final Lcom/android/setupwizardlib/TemplateLayout$1;
.super Ljava/lang/Object;
.source "TemplateLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setupwizardlib/TemplateLayout;->setXFraction(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/setupwizardlib/TemplateLayout;


# direct methods
.method constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/android/setupwizardlib/TemplateLayout$1;->a:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/android/setupwizardlib/TemplateLayout$1;->a:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/TemplateLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/setupwizardlib/TemplateLayout$1;->a:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-static {v1}, Lcom/android/setupwizardlib/TemplateLayout;->a(Lcom/android/setupwizardlib/TemplateLayout;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 254
    iget-object v0, p0, Lcom/android/setupwizardlib/TemplateLayout$1;->a:Lcom/android/setupwizardlib/TemplateLayout;

    invoke-static {v0}, Lcom/android/setupwizardlib/TemplateLayout;->b(Lcom/android/setupwizardlib/TemplateLayout;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/TemplateLayout;->setXFraction(F)V

    const/4 v0, 0x1

    return v0
.end method