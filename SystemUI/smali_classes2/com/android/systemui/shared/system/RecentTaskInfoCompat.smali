.class public Lcom/android/systemui/shared/system/RecentTaskInfoCompat;
.super Ljava/lang/Object;
.source "RecentTaskInfoCompat.java"


# instance fields
.field private mInfo:Landroid/app/ActivityManager$RecentTaskInfo;


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager$RecentTaskInfo;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/systemui/shared/system/RecentTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    return-void
.end method


# virtual methods
.method public getTaskDescription()Landroid/app/ActivityManager$TaskDescription;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/systemui/shared/system/RecentTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object p0
.end method

.method public getTopActivity()Landroid/content/ComponentName;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/shared/system/RecentTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/systemui/shared/system/RecentTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->userId:I

    return p0
.end method

.method public supportsSplitScreenMultiWindow()Z
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/shared/system/RecentTaskInfoCompat;->mInfo:Landroid/app/ActivityManager$RecentTaskInfo;

    iget-boolean p0, p0, Landroid/app/ActivityManager$RecentTaskInfo;->supportsSplitScreenMultiWindow:Z

    return p0
.end method
