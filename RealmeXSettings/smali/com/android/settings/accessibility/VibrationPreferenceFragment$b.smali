.class final Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;
.super Lcom/android/settingslib/widget/g;
.source "VibrationPreferenceFragment.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/VibrationPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/android/settings/accessibility/VibrationPreferenceFragment;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;->b:Lcom/android/settings/accessibility/VibrationPreferenceFragment;

    const/4 p1, 0x1

    .line 253
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/g;-><init>(Z)V

    .line 254
    iput-object p2, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;->a:Ljava/lang/String;

    .line 255
    iput p3, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;->c:I

    .line 256
    iput p4, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;->d:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;->b:Lcom/android/settings/accessibility/VibrationPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;->c:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 275
    iget v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$b;->d:I

    return v0
.end method
