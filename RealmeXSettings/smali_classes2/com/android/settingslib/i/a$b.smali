.class final Lcom/android/settingslib/i/a$b;
.super Ljava/lang/Object;
.source "DreamBackend.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settingslib/i/a$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 0

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    iput-object p1, p0, Lcom/android/settingslib/i/a$b;->a:Landroid/content/ComponentName;

    return-void
.end method

.method private a(Lcom/android/settingslib/i/a$a;)Ljava/lang/String;
    .locals 3

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    iget-object v1, p1, Lcom/android/settingslib/i/a$a;->d:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/settingslib/i/a$b;->a:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x30

    goto :goto_0

    :cond_0
    const/16 v1, 0x31

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    iget-object p1, p1, Lcom/android/settingslib/i/a$a;->a:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 345
    check-cast p1, Lcom/android/settingslib/i/a$a;

    check-cast p2, Lcom/android/settingslib/i/a$a;

    .line 1354
    invoke-direct {p0, p1}, Lcom/android/settingslib/i/a$b;->a(Lcom/android/settingslib/i/a$a;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/android/settingslib/i/a$b;->a(Lcom/android/settingslib/i/a$a;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method
