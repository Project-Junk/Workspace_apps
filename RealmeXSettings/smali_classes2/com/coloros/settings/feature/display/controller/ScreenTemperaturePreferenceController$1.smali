.class final Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController$1;
.super Landroid/database/ContentObserver;
.source "ScreenTemperaturePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;Landroid/os/Handler;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController$1;->a:Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 145
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController$1;->a:Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;

    iget-object v0, p1, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->a:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/coloros/settings/feature/display/nightmode/b;->b(Landroid/content/ContentResolver;)Z

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;->a(Lcom/coloros/settings/feature/display/controller/ScreenTemperaturePreferenceController;ZI)V

    return-void
.end method
