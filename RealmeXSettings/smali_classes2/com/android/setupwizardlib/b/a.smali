.class public Lcom/android/setupwizardlib/b/a;
.super Ljava/lang/Object;
.source "ButtonFooterMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/b/g;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/ViewStub;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Lcom/android/setupwizardlib/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/setupwizardlib/b/a;->a:Landroid/content/Context;

    .line 57
    sget v0, Lcom/android/setupwizardlib/b$d;->suw_layout_footer:I

    .line 1109
    invoke-virtual {p1, v0}, Lcom/android/setupwizardlib/TemplateLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 57
    check-cast p1, Landroid/view/ViewStub;

    iput-object p1, p0, Lcom/android/setupwizardlib/b/a;->b:Landroid/view/ViewStub;

    return-void
.end method
