.class public Landroidx/appcompat/widget/aa;
.super Landroid/widget/ToggleButton;


# instance fields
.field private final a:Landroidx/appcompat/widget/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101004b

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/aa;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroidx/appcompat/widget/x;

    invoke-direct {p1, p0}, Landroidx/appcompat/widget/x;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Landroidx/appcompat/widget/aa;->a:Landroidx/appcompat/widget/x;

    iget-object p0, p0, Landroidx/appcompat/widget/aa;->a:Landroidx/appcompat/widget/x;

    invoke-virtual {p0, p2, p3}, Landroidx/appcompat/widget/x;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method
