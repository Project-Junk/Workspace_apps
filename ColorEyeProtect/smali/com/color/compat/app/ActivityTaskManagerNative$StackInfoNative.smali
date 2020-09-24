.class public Lcom/color/compat/app/ActivityTaskManagerNative$StackInfoNative;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/compat/app/ActivityTaskManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StackInfoNative"
.end annotation


# instance fields
.field public taskNames:[Ljava/lang/String;

.field public taskUserIds:[I

.field public userId:I


# direct methods
.method public constructor <init>(Lcom/color/inner/app/ActivityTaskManagerWrapper$StackInfoWrapper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/color/inner/app/ActivityTaskManagerWrapper$StackInfoWrapper;->taskNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/color/compat/app/ActivityTaskManagerNative$StackInfoNative;->taskNames:[Ljava/lang/String;

    iget v0, p1, Lcom/color/inner/app/ActivityTaskManagerWrapper$StackInfoWrapper;->userId:I

    iput v0, p0, Lcom/color/compat/app/ActivityTaskManagerNative$StackInfoNative;->userId:I

    iget-object p1, p1, Lcom/color/inner/app/ActivityTaskManagerWrapper$StackInfoWrapper;->taskUserIds:[I

    iput-object p1, p0, Lcom/color/compat/app/ActivityTaskManagerNative$StackInfoNative;->taskUserIds:[I

    return-void
.end method
