.class final Lcom/android/settings/sim/a$a;
.super Landroid/widget/ArrayAdapter;
.source "SimPreferenceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/a$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/sim/a;

.field private b:Landroid/content/Context;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/android/settings/sim/a;Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/android/settings/sim/a$a;->a:Lcom/android/settings/sim/a;

    const p1, 0x7f0d02cf

    .line 200
    invoke-direct {p0, p2, p1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 201
    iput-object p2, p0, Lcom/android/settings/sim/a$a;->b:Landroid/content/Context;

    .line 202
    iput p1, p0, Lcom/android/settings/sim/a$a;->c:I

    return-void
.end method


# virtual methods
.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 243
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/sim/a$a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 244
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/sim/a$a$a;

    .line 246
    iget-object v0, p0, Lcom/android/settings/sim/a$a;->a:Lcom/android/settings/sim/a;

    invoke-static {v0}, Lcom/android/settings/sim/a;->d(Lcom/android/settings/sim/a;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 247
    iget-object p1, p3, Lcom/android/settings/sim/a$a$a;->c:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 249
    :cond_0
    iget-object p1, p3, Lcom/android/settings/sim/a$a$a;->c:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 251
    :goto_0
    iget-object p1, p3, Lcom/android/settings/sim/a$a$a;->b:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    return-object p2
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 207
    iget-object p3, p0, Lcom/android/settings/sim/a$a;->b:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 208
    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 212
    iget-object v0, p0, Lcom/android/settings/sim/a$a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070254

    .line 213
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f070255

    .line 214
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 218
    iget p2, p0, Lcom/android/settings/sim/a$a;->c:I

    const/4 v3, 0x0

    invoke-virtual {p3, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 219
    new-instance p3, Lcom/android/settings/sim/a$a$a;

    invoke-direct {p3, p0, v2}, Lcom/android/settings/sim/a$a$a;-><init>(Lcom/android/settings/sim/a$a;B)V

    .line 220
    new-instance v3, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 221
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 222
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 223
    invoke-virtual {v3}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const v0, 0x7f0a0184

    .line 224
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/settings/sim/a$a$a;->a:Landroid/widget/TextView;

    const v0, 0x7f0a0165

    .line 225
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/android/settings/sim/a$a$a;->b:Landroid/widget/ImageView;

    .line 226
    iput-object v3, p3, Lcom/android/settings/sim/a$a$a;->c:Landroid/graphics/drawable/ShapeDrawable;

    .line 227
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/sim/a$a$a;

    .line 233
    :goto_0
    iget-object v0, p3, Lcom/android/settings/sim/a$a$a;->a:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/sim/a$a;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p3, Lcom/android/settings/sim/a$a$a;->c:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sim/a$a;->a:Lcom/android/settings/sim/a;

    invoke-static {v1}, Lcom/android/settings/sim/a;->c(Lcom/android/settings/sim/a;)[I

    move-result-object v1

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 235
    iget-object p1, p3, Lcom/android/settings/sim/a$a$a;->c:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 236
    iget-object p1, p3, Lcom/android/settings/sim/a$a$a;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    iget-object p1, p3, Lcom/android/settings/sim/a$a$a;->b:Landroid/widget/ImageView;

    iget-object p3, p3, Lcom/android/settings/sim/a$a$a;->c:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-object p2
.end method
