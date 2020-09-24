.class public final Lcom/android/settings/c/a$b$a;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContextualCardProto.java"

# interfaces
.implements Lcom/android/settings/c/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/c/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/android/settings/c/a$b;",
        "Lcom/android/settings/c/a$b$a;",
        ">;",
        "Lcom/android/settings/c/a$c;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 260
    invoke-static {}, Lcom/android/settings/c/a$b;->b()Lcom/android/settings/c/a$b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 253
    invoke-direct {p0}, Lcom/android/settings/c/a$b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settings/c/a$a;)Lcom/android/settings/c/a$b$a;
    .locals 1

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/c/a$b$a;->copyOnWrite()V

    .line 305
    iget-object v0, p0, Lcom/android/settings/c/a$b$a;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/settings/c/a$b;

    invoke-static {v0, p1}, Lcom/android/settings/c/a$b;->a(Lcom/android/settings/c/a$b;Lcom/android/settings/c/a$a;)V

    return-object p0
.end method
