.class final Lcom/android/settings/notification/ZenModeScheduleRuleSettings$1;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$1;->a:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 89
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeScheduleRuleSettings$1;->a:Lcom/android/settings/notification/ZenModeScheduleRuleSettings;

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeScheduleRuleSettings;->a(Lcom/android/settings/notification/ZenModeScheduleRuleSettings;)V

    const/4 p1, 0x1

    return p1
.end method
