.class public final Lcom/android/setupwizardlib/b/b;
.super Lcom/android/setupwizardlib/b/c;
.source "ColoredHeaderMixin.java"


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/b/c;-><init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-virtual {p1}, Lcom/android/setupwizardlib/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v0, Lcom/android/setupwizardlib/b$g;->SuwColoredHeaderMixin:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 44
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwColoredHeaderMixin_suwHeaderColor:I

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 47
    invoke-virtual {p0, p2}, Lcom/android/setupwizardlib/b/b;->a(Landroid/content/res/ColorStateList;)V

    .line 50
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/android/setupwizardlib/b/b;->a()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method
