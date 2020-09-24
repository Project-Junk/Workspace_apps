.class public Lcom/android/setupwizardlib/b/d;
.super Ljava/lang/Object;
.source "IconMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/b/g;


# instance fields
.field private a:Lcom/android/setupwizardlib/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/setupwizardlib/b/d;->a:Lcom/android/setupwizardlib/TemplateLayout;

    .line 44
    invoke-virtual {p1}, Lcom/android/setupwizardlib/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 46
    sget-object v0, Lcom/android/setupwizardlib/b$g;->SuwIconMixin:[I

    const/4 v1, 0x0

    .line 47
    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 49
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwIconMixin_android_icon:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_1

    .line 1076
    invoke-virtual {p0}, Lcom/android/setupwizardlib/b/d;->a()Landroid/widget/ImageView;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 1080
    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 1081
    :goto_0
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ImageView;
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/setupwizardlib/b/d;->a:Lcom/android/setupwizardlib/TemplateLayout;

    sget v1, Lcom/android/setupwizardlib/b$d;->suw_layout_icon:I

    .line 1109
    invoke-virtual {v0, v1}, Lcom/android/setupwizardlib/TemplateLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 115
    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method
