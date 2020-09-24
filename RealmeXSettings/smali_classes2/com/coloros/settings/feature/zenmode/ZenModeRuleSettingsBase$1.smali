.class final Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase$1;
.super Ljava/lang/Object;
.source "ZenModeRuleSettingsBase.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase$1;->a:Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 115
    invoke-static {}, Lcom/coloros/settings/feature/zenmode/ZenModeRuleSettingsBase;->n()V

    const/4 p1, 0x1

    return p1
.end method
