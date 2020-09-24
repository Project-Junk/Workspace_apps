.class public Lcolor/support/design/widget/blur/ColorBlur;
.super Ljava/lang/Object;
.source "ColorBlur.java"

# interfaces
.implements Lcolor/support/design/widget/blur/ColorBlurEngine;


# instance fields
.field private mColorBlurEngine:Lcolor/support/design/widget/blur/ColorBlurEngine;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcolor/support/design/widget/blur/ColorBlurConfig;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/color/support/c/e;->a()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 17
    invoke-static {p1}, Lcom/color/support/c/c;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;

    invoke-direct {v0, p1, p2}, Lcolor/support/design/widget/blur/ColorRenderScriptColorBlur;-><init>(Landroid/content/Context;Lcolor/support/design/widget/blur/ColorBlurConfig;)V

    iput-object v0, p0, Lcolor/support/design/widget/blur/ColorBlur;->mColorBlurEngine:Lcolor/support/design/widget/blur/ColorBlurEngine;

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlur;->mColorBlurEngine:Lcolor/support/design/widget/blur/ColorBlurEngine;

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0}, Lcolor/support/design/widget/blur/ColorBlurEngine;->destroy()V

    :cond_0
    return-void
.end method

.method public execute(Landroid/graphics/Bitmap;ZI)Landroid/graphics/Bitmap;
    .locals 1

    .line 25
    iget-object v0, p0, Lcolor/support/design/widget/blur/ColorBlur;->mColorBlurEngine:Lcolor/support/design/widget/blur/ColorBlurEngine;

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0, p1, p2, p3}, Lcolor/support/design/widget/blur/ColorBlurEngine;->execute(Landroid/graphics/Bitmap;ZI)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
