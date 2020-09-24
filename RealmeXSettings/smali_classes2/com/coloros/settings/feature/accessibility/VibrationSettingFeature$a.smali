.class public final Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$a;
.super Landroid/database/ContentObserver;
.source "VibrationSettingFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$a;->a:Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;

    .line 331
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 349
    iget-object p1, p0, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature$a;->a:Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;

    invoke-static {p1}, Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;->b(Lcom/coloros/settings/feature/accessibility/VibrationSettingFeature;)V

    return-void
.end method
