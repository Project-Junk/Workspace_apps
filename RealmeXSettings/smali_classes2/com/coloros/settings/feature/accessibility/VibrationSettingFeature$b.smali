.class public final Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;
.super Lcom/android/settingslib/widget/g;
.source "VibrationSettingFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field final synthetic c:Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;Ljava/lang/String;II)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;->c:Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;

    const/4 p1, 0x1

    .line 294
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/g;-><init>(Z)V

    .line 295
    iput-object p2, p0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;->a:Ljava/lang/String;

    .line 296
    iput p3, p0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;->d:I

    .line 297
    iput p4, p0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;->b:I

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;->c:Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;

    invoke-static {v0}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->a(Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;->c:Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;

    invoke-static {v0}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->a(Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;->d:I

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

    .line 312
    iget-object v0, p0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$b;->a:Ljava/lang/String;

    return-object v0
.end method
