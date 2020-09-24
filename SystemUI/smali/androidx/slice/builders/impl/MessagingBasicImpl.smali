.class public Landroidx/slice/builders/impl/MessagingBasicImpl;
.super Landroidx/slice/builders/impl/TemplateBuilderImpl;
.source "MessagingBasicImpl.java"

# interfaces
.implements Landroidx/slice/builders/impl/MessagingBuilder;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;
    }
.end annotation


# instance fields
.field private mLastMessage:Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;


# direct methods
.method public constructor <init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroidx/slice/builders/impl/TemplateBuilderImpl;-><init>(Landroidx/slice/Slice$Builder;Landroidx/slice/SliceSpec;)V

    return-void
.end method


# virtual methods
.method public add(Landroidx/slice/builders/impl/TemplateBuilderImpl;)V
    .locals 4

    .line 72
    check-cast p1, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;

    .line 73
    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingBasicImpl;->mLastMessage:Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->mTimestamp:J

    iget-wide v2, p1, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->mTimestamp:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 74
    :cond_0
    iput-object p1, p0, Landroidx/slice/builders/impl/MessagingBasicImpl;->mLastMessage:Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;

    :cond_1
    return-void
.end method

.method public apply(Landroidx/slice/Slice$Builder;)V
    .locals 3

    .line 54
    iget-object v0, p0, Landroidx/slice/builders/impl/MessagingBasicImpl;->mLastMessage:Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;

    if-eqz v0, :cond_2

    .line 55
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-virtual {p0}, Landroidx/slice/builders/impl/MessagingBasicImpl;->getBuilder()Landroidx/slice/Slice$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/slice/Slice$Builder;-><init>(Landroidx/slice/Slice$Builder;)V

    const-string v1, "list_item"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addHints([Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    move-result-object v0

    .line 56
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 57
    iget-object v1, p0, Landroidx/slice/builders/impl/MessagingBasicImpl;->mLastMessage:Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;

    iget-object v1, v1, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->mIcon:Landroidx/slice/Slice;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Landroidx/slice/builders/impl/MessagingBasicImpl;->mLastMessage:Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;

    iget-object v1, v1, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->mIcon:Landroidx/slice/Slice;

    invoke-virtual {v0, v1}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    .line 61
    :cond_0
    iget-object v1, p0, Landroidx/slice/builders/impl/MessagingBasicImpl;->mLastMessage:Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;

    iget-object v1, v1, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 62
    iget-object p0, p0, Landroidx/slice/builders/impl/MessagingBasicImpl;->mLastMessage:Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;

    iget-object p0, p0, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;->mText:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Landroidx/slice/Slice$Builder;->addText(Ljava/lang/CharSequence;Ljava/lang/String;[Ljava/lang/String;)Landroidx/slice/Slice$Builder;

    .line 64
    :cond_1
    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/slice/Slice$Builder;->addSubSlice(Landroidx/slice/Slice;)Landroidx/slice/Slice$Builder;

    :cond_2
    return-void
.end method

.method public createMessageBuilder()Landroidx/slice/builders/impl/TemplateBuilderImpl;
    .locals 1

    .line 82
    new-instance v0, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;

    invoke-direct {v0, p0}, Landroidx/slice/builders/impl/MessagingBasicImpl$MessageBuilder;-><init>(Landroidx/slice/builders/impl/MessagingBasicImpl;)V

    return-object v0
.end method
