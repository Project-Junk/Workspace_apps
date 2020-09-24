.class final Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$initOpenTimePicker$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/color/support/widget/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->initOpenTimePicker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;


# direct methods
.method constructor <init>(Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$initOpenTimePicker$1;->this$0:Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTimeChanged(Lcom/color/support/widget/e;II)V
    .locals 1

    iget-object v0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$initOpenTimePicker$1;->this$0:Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;

    invoke-static {v0, p2}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->access$setMBeginHour$p(Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;I)V

    iget-object p2, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$initOpenTimePicker$1;->this$0:Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;

    invoke-static {p2, p3}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->access$setMBeginMinute$p(Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;I)V

    iget-object p0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$initOpenTimePicker$1;->this$0:Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;

    const-string p2, "view"

    invoke-static {p1, p2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->access$sendTimeChangeMessage(Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;Lcom/color/support/widget/e;)V

    return-void
.end method
