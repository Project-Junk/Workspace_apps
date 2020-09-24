.class final Lcom/android/settingslib/widget/a$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "AdaptiveIcon.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/widget/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/graphics/drawable/Drawable;

.field c:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/android/settingslib/widget/a$a;->a:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/android/settingslib/widget/a$a;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 119
    new-instance v0, Lcom/android/settingslib/widget/a;

    iget-object v1, p0, Lcom/android/settingslib/widget/a$a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/widget/a$a;->b:Landroid/graphics/drawable/Drawable;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/widget/a;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 120
    iget v1, p0, Lcom/android/settingslib/widget/a$a;->c:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/a;->a(I)V

    return-object v0
.end method
