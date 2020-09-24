.class final Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$2;
.super Ljava/lang/Object;
.source "ZenModeAddRulesFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$2;->a:Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 300
    move-object p1, p2

    check-cast p1, Ljava/util/HashSet;

    .line 301
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$2;->a:Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;

    invoke-static {v0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->a(Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;Ljava/util/HashSet;)[I

    move-result-object p1

    .line 302
    invoke-static {}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->b()Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iput-object p1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 303
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$2;->a:Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;

    iget-object p1, p1, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->g:Landroid/app/AutomaticZenRule;

    invoke-static {}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->b()Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AutomaticZenRule;->setConditionId(Landroid/net/Uri;)V

    .line 304
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$2;->a:Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->a(Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;)V

    .line 305
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onPreferenceChange: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ZenModeAddRules"

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
