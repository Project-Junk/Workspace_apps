.class public Lcom/color/compat/app/ActivityTaskManagerNative$StackInfoNative;
.super Ljava/lang/Object;
.source "ActivityTaskManagerNative.java"


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
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field public taskUserIds:[I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field public userId:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/color/inner/app/ActivityTaskManagerWrapper$StackInfoWrapper;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iget-object v0, p1, Lcom/color/inner/app/ActivityTaskManagerWrapper$StackInfoWrapper;->taskNames:[Ljava/lang/String;

    iput-object v0, p0, Lcom/color/compat/app/ActivityTaskManagerNative$StackInfoNative;->taskNames:[Ljava/lang/String;

    .line 63
    iget v0, p1, Lcom/color/inner/app/ActivityTaskManagerWrapper$StackInfoWrapper;->userId:I

    iput v0, p0, Lcom/color/compat/app/ActivityTaskManagerNative$StackInfoNative;->userId:I

    .line 64
    iget-object p1, p1, Lcom/color/inner/app/ActivityTaskManagerWrapper$StackInfoWrapper;->taskUserIds:[I

    iput-object p1, p0, Lcom/color/compat/app/ActivityTaskManagerNative$StackInfoNative;->taskUserIds:[I

    return-void
.end method
