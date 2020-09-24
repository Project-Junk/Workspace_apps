.class public Lcom/android/setupwizardlib/items/ButtonItem;
.super Lcom/android/setupwizardlib/items/AbstractItem;
.source "ButtonItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field b:Z

.field c:Ljava/lang/CharSequence;

.field d:I

.field e:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcom/android/setupwizardlib/items/AbstractItem;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ButtonItem;->b:Z

    .line 43
    sget v0, Lcom/android/setupwizardlib/b$f;->SuwButtonItem:I

    iput v0, p0, Lcom/android/setupwizardlib/items/ButtonItem;->d:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/setupwizardlib/items/AbstractItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/android/setupwizardlib/items/ButtonItem;->b:Z

    .line 43
    sget v1, Lcom/android/setupwizardlib/b$f;->SuwButtonItem:I

    iput v1, p0, Lcom/android/setupwizardlib/items/ButtonItem;->d:I

    .line 54
    sget-object v1, Lcom/android/setupwizardlib/b$g;->SuwButtonItem:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 55
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwButtonItem_android_enabled:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/setupwizardlib/items/ButtonItem;->b:Z

    .line 56
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwButtonItem_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/setupwizardlib/items/ButtonItem;->c:Ljava/lang/CharSequence;

    .line 57
    sget p2, Lcom/android/setupwizardlib/b$g;->SuwButtonItem_android_theme:I

    sget v0, Lcom/android/setupwizardlib/b$f;->SuwButtonItem:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/setupwizardlib/items/ButtonItem;->d:I

    .line 58
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static a(Landroid/content/Context;)Landroid/widget/Button;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .line 159
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    sget v0, Lcom/android/setupwizardlib/b$e;->suw_button:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    .line 116
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot bind to ButtonItem\'s view"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/android/setupwizardlib/items/ButtonItem;->b:Z

    return v0
.end method

.method public final d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method
