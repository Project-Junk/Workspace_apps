.class public Lcom/coloros/backup/sdk/utils/Constants$ContactType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/backup/sdk/utils/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactType"
.end annotation


# static fields
.field public static final ALL:Ljava/lang/String; = "all"

.field public static final PHONE:Ljava/lang/String; = "phone"

.field public static final SIM1:Ljava/lang/String; = "sim1"

.field public static final SIM2:Ljava/lang/String; = "sim2"


# instance fields
.field final synthetic this$0:Lcom/coloros/backup/sdk/utils/Constants;


# direct methods
.method public constructor <init>(Lcom/coloros/backup/sdk/utils/Constants;)V
    .locals 0

    iput-object p1, p0, Lcom/coloros/backup/sdk/utils/Constants$ContactType;->this$0:Lcom/coloros/backup/sdk/utils/Constants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
