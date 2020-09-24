.class public final Lcom/android/settingslib/widget/ActionButtonsPreference$a;
.super Ljava/lang/Object;
.source "ActionButtonsPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/widget/ActionButtonsPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/Button;

.field public b:Ljava/lang/CharSequence;

.field c:Landroid/graphics/drawable/Drawable;

.field public d:Landroid/view/View$OnClickListener;

.field e:Z

.field f:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 365
    iput-boolean v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$a;->e:Z

    .line 366
    iput-boolean v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$a;->f:Z

    return-void
.end method

.method private b()Z
    .locals 1

    .line 390
    iget-boolean v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$a;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$a;->b:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$a;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 369
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$a;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$a;->b:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$a;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$a;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 371
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$a;->a:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$a;->e:Z

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 372
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$a;->a:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$a;->c:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 375
    invoke-direct {p0}, Lcom/android/settingslib/widget/ActionButtonsPreference$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$a;->a:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/widget/ActionButtonsPreference$a;->a:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
