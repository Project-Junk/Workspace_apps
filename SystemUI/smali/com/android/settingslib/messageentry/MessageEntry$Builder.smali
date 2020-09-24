.class public Lcom/android/settingslib/messageentry/MessageEntry$Builder;
.super Ljava/lang/Object;
.source "MessageEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/messageentry/MessageEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private displayOrder:I

.field private entrancePath:Ljava/lang/String;

.field private msgId:Ljava/lang/String;

.field private pkgName:Ljava/lang/String;

.field private targetAction:Ljava/lang/String;

.field private targetPackageName:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private titleResName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->msgId:Ljava/lang/String;

    .line 87
    iput-object p2, p0, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->pkgName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->msgId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->titleResName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settingslib/messageentry/MessageEntry$Builder;)I
    .locals 0

    .line 70
    iget p0, p0, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->displayOrder:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->pkgName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->targetAction:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->targetPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->entrancePath:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/android/settingslib/messageentry/MessageEntry;
    .locals 2

    .line 145
    new-instance v0, Lcom/android/settingslib/messageentry/MessageEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settingslib/messageentry/MessageEntry;-><init>(Lcom/android/settingslib/messageentry/MessageEntry$Builder;Lcom/android/settingslib/messageentry/MessageEntry$1;)V

    return-object v0
.end method

.method public displayOrder(I)Lcom/android/settingslib/messageentry/MessageEntry$Builder;
    .locals 0

    .line 114
    iput p1, p0, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->displayOrder:I

    return-object p0
.end method

.method public entrancePath(Ljava/lang/String;)Lcom/android/settingslib/messageentry/MessageEntry$Builder;
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->entrancePath:Ljava/lang/String;

    return-object p0
.end method

.method public targetAction(Ljava/lang/String;)Lcom/android/settingslib/messageentry/MessageEntry$Builder;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->targetAction:Ljava/lang/String;

    return-object p0
.end method

.method public targetPackageName(Ljava/lang/String;)Lcom/android/settingslib/messageentry/MessageEntry$Builder;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->targetPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public title(Ljava/lang/String;)Lcom/android/settingslib/messageentry/MessageEntry$Builder;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public titleResName(Ljava/lang/String;)Lcom/android/settingslib/messageentry/MessageEntry$Builder;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->titleResName:Ljava/lang/String;

    return-object p0
.end method
