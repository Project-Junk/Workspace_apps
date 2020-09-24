.class public Lcom/color/support/widget/ColorSupportMenuItem$Builder;
.super Ljava/lang/Object;
.source "ColorSupportMenuItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/support/widget/ColorSupportMenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCi:Lcom/color/support/widget/ColorSupportMenuItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lcom/color/support/widget/ColorSupportMenuItem;

    invoke-direct {v0}, Lcom/color/support/widget/ColorSupportMenuItem;-><init>()V

    iput-object v0, p0, Lcom/color/support/widget/ColorSupportMenuItem$Builder;->mCi:Lcom/color/support/widget/ColorSupportMenuItem;

    .line 50
    iget-object p0, p0, Lcom/color/support/widget/ColorSupportMenuItem$Builder;->mCi:Lcom/color/support/widget/ColorSupportMenuItem;

    invoke-static {p0, p1}, Lcom/color/support/widget/ColorSupportMenuItem;->access$002(Lcom/color/support/widget/ColorSupportMenuItem;Landroid/content/Context;)Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create()Lcom/color/support/widget/ColorSupportMenuItem;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/color/support/widget/ColorSupportMenuItem$Builder;->mCi:Lcom/color/support/widget/ColorSupportMenuItem;

    return-object p0
.end method

.method public setBackgroud(I)Lcom/color/support/widget/ColorSupportMenuItem$Builder;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/color/support/widget/ColorSupportMenuItem$Builder;->mCi:Lcom/color/support/widget/ColorSupportMenuItem;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorSupportMenuItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/color/support/widget/ColorSupportMenuItem;->access$302(Lcom/color/support/widget/ColorSupportMenuItem;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setBackgroud(Landroid/graphics/drawable/Drawable;)Lcom/color/support/widget/ColorSupportMenuItem$Builder;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/color/support/widget/ColorSupportMenuItem$Builder;->mCi:Lcom/color/support/widget/ColorSupportMenuItem;

    invoke-static {v0, p1}, Lcom/color/support/widget/ColorSupportMenuItem;->access$302(Lcom/color/support/widget/ColorSupportMenuItem;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIcon(I)Lcom/color/support/widget/ColorSupportMenuItem$Builder;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/color/support/widget/ColorSupportMenuItem$Builder;->mCi:Lcom/color/support/widget/ColorSupportMenuItem;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorSupportMenuItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/color/support/widget/ColorSupportMenuItem;->access$202(Lcom/color/support/widget/ColorSupportMenuItem;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/color/support/widget/ColorSupportMenuItem$Builder;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/color/support/widget/ColorSupportMenuItem$Builder;->mCi:Lcom/color/support/widget/ColorSupportMenuItem;

    invoke-static {v0, p1}, Lcom/color/support/widget/ColorSupportMenuItem;->access$202(Lcom/color/support/widget/ColorSupportMenuItem;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setOnItemClickListener(Lcom/color/support/widget/ColorSupportMenuItem$OnItemClickListener;)Lcom/color/support/widget/ColorSupportMenuItem$Builder;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/color/support/widget/ColorSupportMenuItem$Builder;->mCi:Lcom/color/support/widget/ColorSupportMenuItem;

    invoke-static {v0, p1}, Lcom/color/support/widget/ColorSupportMenuItem;->access$402(Lcom/color/support/widget/ColorSupportMenuItem;Lcom/color/support/widget/ColorSupportMenuItem$OnItemClickListener;)Lcom/color/support/widget/ColorSupportMenuItem$OnItemClickListener;

    return-object p0
.end method

.method public setText(I)Lcom/color/support/widget/ColorSupportMenuItem$Builder;
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/color/support/widget/ColorSupportMenuItem$Builder;->mCi:Lcom/color/support/widget/ColorSupportMenuItem;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorSupportMenuItem;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/color/support/widget/ColorSupportMenuItem;->access$102(Lcom/color/support/widget/ColorSupportMenuItem;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method

.method public setText(Ljava/lang/String;)Lcom/color/support/widget/ColorSupportMenuItem$Builder;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/color/support/widget/ColorSupportMenuItem$Builder;->mCi:Lcom/color/support/widget/ColorSupportMenuItem;

    invoke-static {v0, p1}, Lcom/color/support/widget/ColorSupportMenuItem;->access$102(Lcom/color/support/widget/ColorSupportMenuItem;Ljava/lang/String;)Ljava/lang/String;

    return-object p0
.end method
