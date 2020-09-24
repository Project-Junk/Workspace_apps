.class public final Lcom/coloros/settings/ringtone/a/b;
.super Lcom/coloros/settings/ringtone/a/a;
.source "TitleComparatorGenerator.java"


# instance fields
.field private a:Ljava/text/Collator;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/coloros/settings/ringtone/a/a;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/ringtone/a/b;->b:Ljava/util/HashMap;

    .line 25
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/ringtone/a/b;->a:Ljava/text/Collator;

    .line 26
    iget-object v0, p0, Lcom/coloros/settings/ringtone/a/b;->b:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 27
    iput-object p1, p0, Lcom/coloros/settings/ringtone/a/b;->b:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;Ljava/io/File;)I
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/coloros/settings/ringtone/a/b;->b:Ljava/util/HashMap;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 35
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/coloros/settings/ringtone/a/b;->b:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-nez p1, :cond_2

    return v1

    :cond_2
    if-nez p2, :cond_3

    const/4 p1, 0x1

    return p1

    .line 46
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/ringtone/a/b;->a:Ljava/text/Collator;

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
