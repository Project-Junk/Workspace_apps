.class public Lcom/android/systemui/appops/AppOpItem;
.super Ljava/lang/Object;
.source "AppOpItem.java"


# instance fields
.field private mCode:I

.field private mPackageName:Ljava/lang/String;

.field private mState:Ljava/lang/String;

.field private mTimeStarted:J

.field private mUid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;J)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    .line 32
    iput p2, p0, Lcom/android/systemui/appops/AppOpItem;->mUid:I

    .line 33
    iput-object p3, p0, Lcom/android/systemui/appops/AppOpItem;->mPackageName:Ljava/lang/String;

    .line 34
    iput-wide p4, p0, Lcom/android/systemui/appops/AppOpItem;->mTimeStarted:J

    .line 35
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "AppOpItem("

    .line 36
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "Op code="

    .line 37
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "UID="

    .line 38
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Package name="

    .line 39
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 40
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/appops/AppOpItem;->mState:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 45
    iget p0, p0, Lcom/android/systemui/appops/AppOpItem;->mCode:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpItem;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getTimeStarted()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/android/systemui/appops/AppOpItem;->mTimeStarted:J

    return-wide v0
.end method

.method public getUid()I
    .locals 0

    .line 49
    iget p0, p0, Lcom/android/systemui/appops/AppOpItem;->mUid:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/appops/AppOpItem;->mState:Ljava/lang/String;

    return-object p0
.end method
