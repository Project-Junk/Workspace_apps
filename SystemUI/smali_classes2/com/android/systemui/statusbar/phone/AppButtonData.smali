.class Lcom/android/systemui/statusbar/phone/AppButtonData;
.super Ljava/lang/Object;
.source "AppButtonData.java"


# instance fields
.field public final appInfo:Lcom/android/systemui/statusbar/phone/AppInfo;

.field public pinned:Z

.field public tasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/AppInfo;Z)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AppButtonData;->appInfo:Lcom/android/systemui/statusbar/phone/AppInfo;

    .line 34
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/AppButtonData;->pinned:Z

    return-void
.end method


# virtual methods
.method public addTask(Landroid/app/ActivityManager$RecentTaskInfo;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AppButtonData;->tasks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/AppButtonData;->tasks:Ljava/util/ArrayList;

    .line 52
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AppButtonData;->tasks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearTasks()V
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AppButtonData;->tasks:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 57
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public getTaskCount()I
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AppButtonData;->tasks:Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_0
    return p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/AppButtonData;->pinned:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/AppButtonData;->getTaskCount()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
