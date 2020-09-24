.class final Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$3;
.super Ljava/lang/Object;
.source "ZenModeAddRulesFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;II)V
    .locals 0

    .line 385
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$3;->c:Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;

    iput p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$3;->a:I

    iput p3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 388
    iget v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$3;->a:I

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidHour(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 391
    :cond_0
    iget v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$3;->b:I

    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidMinute(I)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 394
    :cond_1
    iget v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$3;->a:I

    invoke-static {}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->b()Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$3;->b:I

    invoke-static {}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->b()Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    if-ne v0, v1, :cond_2

    return-void

    .line 397
    :cond_2
    invoke-static {}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->b()Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iget v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$3;->a:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 398
    invoke-static {}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->b()Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v0

    iget v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$3;->b:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 399
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment$3;->c:Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;

    iget-object v0, v0, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->g:Landroid/app/AutomaticZenRule;

    invoke-static {}, Lcom/coloros/settings/feature/zenmode/ZenModeAddRulesFragment;->b()Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AutomaticZenRule;->setConditionId(Landroid/net/Uri;)V

    return-void
.end method
