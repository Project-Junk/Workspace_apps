.class public Lcom/android/settingslib/messageentry/MessageEntry;
.super Ljava/lang/Object;
.source "MessageEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/messageentry/MessageEntry$Builder;
    }
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
.method private constructor <init>(Lcom/android/settingslib/messageentry/MessageEntry$Builder;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {p1}, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->access$000(Lcom/android/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/messageentry/MessageEntry;->msgId:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->access$100(Lcom/android/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/messageentry/MessageEntry;->title:Ljava/lang/String;

    .line 30
    invoke-static {p1}, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->access$200(Lcom/android/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/messageentry/MessageEntry;->titleResName:Ljava/lang/String;

    .line 31
    invoke-static {p1}, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->access$300(Lcom/android/settingslib/messageentry/MessageEntry$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/messageentry/MessageEntry;->displayOrder:I

    .line 32
    invoke-static {p1}, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->access$400(Lcom/android/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/messageentry/MessageEntry;->pkgName:Ljava/lang/String;

    .line 33
    invoke-static {p1}, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->access$500(Lcom/android/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/messageentry/MessageEntry;->targetAction:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->access$600(Lcom/android/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/messageentry/MessageEntry;->targetPackageName:Ljava/lang/String;

    .line 35
    invoke-static {p1}, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->access$700(Lcom/android/settingslib/messageentry/MessageEntry$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/messageentry/MessageEntry;->entrancePath:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/messageentry/MessageEntry$Builder;Lcom/android/settingslib/messageentry/MessageEntry$1;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/android/settingslib/messageentry/MessageEntry;-><init>(Lcom/android/settingslib/messageentry/MessageEntry$Builder;)V

    return-void
.end method


# virtual methods
.method public getDisplayOrder()I
    .locals 0

    .line 51
    iget p0, p0, Lcom/android/settingslib/messageentry/MessageEntry;->displayOrder:I

    return p0
.end method

.method public getEntrancePath()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/android/settingslib/messageentry/MessageEntry;->entrancePath:Ljava/lang/String;

    return-object p0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settingslib/messageentry/MessageEntry;->msgId:Ljava/lang/String;

    return-object p0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/android/settingslib/messageentry/MessageEntry;->pkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetAction()Ljava/lang/String;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/settingslib/messageentry/MessageEntry;->targetAction:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetPackageName()Ljava/lang/String;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settingslib/messageentry/MessageEntry;->targetPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settingslib/messageentry/MessageEntry;->title:Ljava/lang/String;

    return-object p0
.end method

.method public getTitleResName()Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settingslib/messageentry/MessageEntry;->titleResName:Ljava/lang/String;

    return-object p0
.end method
