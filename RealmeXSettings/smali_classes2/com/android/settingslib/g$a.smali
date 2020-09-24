.class public final Lcom/android/settingslib/g$a;
.super Ljava/lang/Object;
.source "RestrictedLockUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final d:Lcom/android/settingslib/g$a;


# instance fields
.field public a:Landroid/content/ComponentName;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public c:Landroid/os/UserHandle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    new-instance v0, Lcom/android/settingslib/g$a;

    invoke-direct {v0}, Lcom/android/settingslib/g$a;-><init>()V

    sput-object v0, Lcom/android/settingslib/g$a;->d:Lcom/android/settingslib/g$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/android/settingslib/g$a;->a:Landroid/content/ComponentName;

    .line 112
    iput-object v0, p0, Lcom/android/settingslib/g$a;->b:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lcom/android/settingslib/g$a;->c:Landroid/os/UserHandle;

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V
    .locals 1

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/android/settingslib/g$a;->a:Landroid/content/ComponentName;

    .line 112
    iput-object v0, p0, Lcom/android/settingslib/g$a;->b:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lcom/android/settingslib/g$a;->c:Landroid/os/UserHandle;

    .line 128
    iput-object p1, p0, Lcom/android/settingslib/g$a;->a:Landroid/content/ComponentName;

    .line 129
    iput-object p2, p0, Lcom/android/settingslib/g$a;->c:Landroid/os/UserHandle;

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/android/settingslib/g$a;->a:Landroid/content/ComponentName;

    .line 112
    iput-object v0, p0, Lcom/android/settingslib/g$a;->b:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lcom/android/settingslib/g$a;->c:Landroid/os/UserHandle;

    .line 133
    iput-object p1, p0, Lcom/android/settingslib/g$a;->a:Landroid/content/ComponentName;

    .line 134
    iput-object p2, p0, Lcom/android/settingslib/g$a;->b:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Lcom/android/settingslib/g$a;->c:Landroid/os/UserHandle;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/android/settingslib/g$a;
    .locals 1

    .line 122
    new-instance v0, Lcom/android/settingslib/g$a;

    invoke-direct {v0}, Lcom/android/settingslib/g$a;-><init>()V

    .line 123
    iput-object p0, v0, Lcom/android/settingslib/g$a;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 153
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 154
    :cond_1
    check-cast p1, Lcom/android/settingslib/g$a;

    .line 155
    iget-object v2, p0, Lcom/android/settingslib/g$a;->c:Landroid/os/UserHandle;

    iget-object v3, p1, Lcom/android/settingslib/g$a;->c:Landroid/os/UserHandle;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settingslib/g$a;->a:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/settingslib/g$a;->a:Landroid/content/ComponentName;

    .line 156
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settingslib/g$a;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settingslib/g$a;->b:Ljava/lang/String;

    .line 157
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    .line 162
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settingslib/g$a;->a:Landroid/content/ComponentName;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settingslib/g$a;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/settingslib/g$a;->c:Landroid/os/UserHandle;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EnforcedAdmin{component="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settingslib/g$a;->a:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", enforcedRestriction=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/g$a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/g$a;->c:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
