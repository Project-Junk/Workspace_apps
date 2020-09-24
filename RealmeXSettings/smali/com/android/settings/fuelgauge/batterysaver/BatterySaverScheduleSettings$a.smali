.class final Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$a;
.super Lcom/android/settingslib/widget/g;
.source "BatterySaverScheduleSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/CharSequence;

.field private final b:Ljava/lang/CharSequence;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 187
    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/g;-><init>(Z)V

    .line 188
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$a;->b:Ljava/lang/CharSequence;

    .line 189
    iput-object p3, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$a;->c:Ljava/lang/String;

    .line 190
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$a;->a:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$a;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterysaver/BatterySaverScheduleSettings$a;->c:Ljava/lang/String;

    return-object v0
.end method
