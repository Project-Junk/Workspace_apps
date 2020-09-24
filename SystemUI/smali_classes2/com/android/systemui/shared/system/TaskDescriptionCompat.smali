.class public Lcom/android/systemui/shared/system/TaskDescriptionCompat;
.super Ljava/lang/Object;
.source "TaskDescriptionCompat.java"


# instance fields
.field private mTaskDescription:Landroid/app/ActivityManager$TaskDescription;


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager$TaskDescription;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/systemui/shared/system/TaskDescriptionCompat;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskDescriptionCompat;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz p0, :cond_0

    .line 37
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getPrimaryColor()I
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/systemui/shared/system/TaskDescriptionCompat;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz p0, :cond_0

    .line 31
    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
