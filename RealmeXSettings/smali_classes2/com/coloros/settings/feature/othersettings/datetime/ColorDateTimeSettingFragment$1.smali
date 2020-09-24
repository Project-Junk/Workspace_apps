.class final Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment$1;
.super Ljava/lang/Object;
.source "ColorDateTimeSettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment$1;->a:Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment$1;->a:Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;

    .line 1109
    invoke-virtual {v0}, Lcom/android/settings/DateTimeSettings;->b_()V

    return-void
.end method
