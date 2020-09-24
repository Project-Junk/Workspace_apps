.class final synthetic Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$sendTimeChangeMessage$1;
.super La/d/b/j;


# direct methods
.method constructor <init>(Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;)V
    .locals 0

    invoke-direct {p0, p1}, La/d/b/j;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$sendTimeChangeMessage$1;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;

    invoke-static {p0}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->access$getMHandler$p(Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;)Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$WeakHandler;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    const-string p0, "mHandler"

    return-object p0
.end method

.method public getOwner()La/f/d;
    .locals 0

    const-class p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;

    invoke-static {p0}, La/d/b/n;->a(Ljava/lang/Class;)La/f/c;

    move-result-object p0

    return-object p0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 0

    const-string p0, "getMHandler()Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$WeakHandler;"

    return-object p0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$sendTimeChangeMessage$1;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;

    check-cast p1, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$WeakHandler;

    invoke-static {p0, p1}, Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;->access$setMHandler$p(Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference;Lcom/color/darkmode/ui/widget/DarkModeSettingTimePreference$WeakHandler;)V

    return-void
.end method
