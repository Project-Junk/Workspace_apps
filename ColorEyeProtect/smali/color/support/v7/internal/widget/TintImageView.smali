.class public Lcolor/support/v7/internal/widget/TintImageView;
.super Landroidx/appcompat/widget/n;


# static fields
.field private static final a:[I


# instance fields
.field private final b:Lcolor/support/v7/internal/widget/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcolor/support/v7/internal/widget/TintImageView;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100d4
        0x1010119
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcolor/support/v7/internal/widget/TintImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcolor/support/v7/internal/widget/TintImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/n;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcolor/support/v7/internal/widget/TintImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcolor/support/v7/internal/widget/TintImageView;->a:[I

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, p3, v2}, Landroidx/appcompat/widget/av;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/av;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/appcompat/widget/av;->a()I

    move-result p3

    if-lez p3, :cond_1

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/av;->g(I)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/av;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcolor/support/v7/internal/widget/TintImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/av;->g(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, p3}, Landroidx/appcompat/widget/av;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcolor/support/v7/internal/widget/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    invoke-virtual {p2}, Landroidx/appcompat/widget/av;->b()V

    invoke-static {p1}, Lcolor/support/v7/internal/widget/c;->a(Landroid/content/Context;)Lcolor/support/v7/internal/widget/c;

    move-result-object p1

    iput-object p1, p0, Lcolor/support/v7/internal/widget/TintImageView;->b:Lcolor/support/v7/internal/widget/c;

    return-void
.end method


# virtual methods
.method public setImageResource(I)V
    .locals 1

    iget-object v0, p0, Lcolor/support/v7/internal/widget/TintImageView;->b:Lcolor/support/v7/internal/widget/c;

    invoke-virtual {v0, p1}, Lcolor/support/v7/internal/widget/c;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcolor/support/v7/internal/widget/TintImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
