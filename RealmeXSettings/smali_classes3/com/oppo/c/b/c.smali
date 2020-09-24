.class public final Lcom/oppo/c/b/c;
.super Ljava/lang/Object;
.source "CommonBean.java"

# interfaces
.implements Lcom/oppo/c/b/j;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/oppo/c/b/c;->a:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/oppo/c/b/c;->b:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/oppo/c/b/c;->c:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/oppo/c/b/c;->d:Ljava/lang/String;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/oppo/c/b/c;->e:Z

    .line 29
    iput-object p1, p0, Lcom/oppo/c/b/c;->b:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/oppo/c/b/c;->d:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/oppo/c/b/c;->c:Ljava/lang/String;

    .line 32
    iput-boolean p4, p0, Lcom/oppo/c/b/c;->e:Z

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " type is :"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uploadNow is :"

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2060
    iget-boolean v2, p0, Lcom/oppo/c/b/c;->e:Z

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " tag is :"

    .line 89
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3044
    iget-object v2, p0, Lcom/oppo/c/b/c;->b:Ljava/lang/String;

    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " eventID is :"

    .line 92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4036
    iget-object v2, p0, Lcom/oppo/c/b/c;->c:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " map is :"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4052
    iget-object v1, p0, Lcom/oppo/c/b/c;->d:Ljava/lang/String;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
