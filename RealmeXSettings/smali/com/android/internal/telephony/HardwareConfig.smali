.class public Lcom/android/internal/telephony/HardwareConfig;
.super Ljava/lang/Object;
.source "HardwareConfig.java"


# static fields
.field public static final DEV_HARDWARE_STATE_DISABLED:I = 0x2

.field public static final DEV_HARDWARE_STATE_ENABLED:I = 0x0

.field public static final DEV_HARDWARE_STATE_STANDBY:I = 0x1

.field public static final DEV_HARDWARE_TYPE_MODEM:I = 0x0

.field public static final DEV_HARDWARE_TYPE_SIM:I = 0x1

.field public static final DEV_MODEM_RIL_MODEL_MULTIPLE:I = 0x1

.field public static final DEV_MODEM_RIL_MODEL_SINGLE:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "HardwareConfig"


# instance fields
.field public maxActiveDataCall:I

.field public maxActiveVoiceCall:I

.field public maxStandby:I

.field public modemUuid:Ljava/lang/String;

.field public rat:Ljava/util/BitSet;

.field public rilModel:I

.field public state:I

.field public type:I

.field public uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p1, p0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 11

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ","

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 124
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    .line 126
    iget v0, p0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    aget-object v0, p1, v3

    .line 141
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    aget-object v2, p1, v2

    .line 142
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object p1, p1, v1

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-virtual {p0, v0, v2, p1}, Lcom/android/internal/telephony/HardwareConfig;->assignSim(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void

    .line 128
    :cond_1
    aget-object v0, p1, v3

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aget-object v0, p1, v2

    .line 130
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v0, p1, v1

    .line 131
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v0, 0x4

    aget-object v0, p1, v0

    .line 132
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/4 v0, 0x5

    aget-object v0, p1, v0

    .line 133
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v0, 0x6

    aget-object v0, p1, v0

    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/4 v0, 0x7

    aget-object p1, p1, v0

    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move-object v3, p0

    .line 128
    invoke-virtual/range {v3 .. v10}, Lcom/android/internal/telephony/HardwareConfig;->assignModem(Ljava/lang/String;IIIIII)V

    return-void
.end method


# virtual methods
.method public assignModem(Ljava/lang/String;IIIIII)V
    .locals 2

    .line 152
    iget v0, p0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    if-nez v0, :cond_2

    .line 153
    invoke-static {p4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    .line 154
    iput-object p1, p0, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    .line 155
    iput p2, p0, Lcom/android/internal/telephony/HardwareConfig;->state:I

    .line 156
    iput p3, p0, Lcom/android/internal/telephony/HardwareConfig;->rilModel:I

    .line 157
    new-instance p1, Ljava/util/BitSet;

    array-length p2, p4

    invoke-direct {p1, p2}, Ljava/util/BitSet;-><init>(I)V

    iput-object p1, p0, Lcom/android/internal/telephony/HardwareConfig;->rat:Ljava/util/BitSet;

    const/4 p1, 0x0

    move p2, p1

    .line 158
    :goto_0
    array-length p3, p4

    if-ge p2, p3, :cond_1

    .line 159
    iget-object p3, p0, Lcom/android/internal/telephony/HardwareConfig;->rat:Ljava/util/BitSet;

    aget-char v0, p4, p2

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    move v0, p1

    :goto_1
    invoke-virtual {p3, p2, v0}, Ljava/util/BitSet;->set(IZ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 161
    :cond_1
    iput p5, p0, Lcom/android/internal/telephony/HardwareConfig;->maxActiveVoiceCall:I

    .line 162
    iput p6, p0, Lcom/android/internal/telephony/HardwareConfig;->maxActiveDataCall:I

    .line 163
    iput p7, p0, Lcom/android/internal/telephony/HardwareConfig;->maxStandby:I

    :cond_2
    return-void
.end method

.method public assignSim(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 168
    iget v0, p0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 169
    iput-object p1, p0, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    .line 170
    iput-object p3, p0, Lcom/android/internal/telephony/HardwareConfig;->modemUuid:Ljava/lang/String;

    .line 171
    iput p2, p0, Lcom/android/internal/telephony/HardwareConfig;->state:I

    :cond_0
    return-void
.end method

.method public compareTo(Lcom/android/internal/telephony/HardwareConfig;)I
    .locals 1

    .line 200
    invoke-virtual {p0}, Lcom/android/internal/telephony/HardwareConfig;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {p1}, Lcom/android/internal/telephony/HardwareConfig;->toString()Ljava/lang/String;

    move-result-object p1

    .line 203
    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 177
    iget v1, p0, Lcom/android/internal/telephony/HardwareConfig;->type:I

    const-string v2, " }"

    const-string v3, ", state="

    const-string/jumbo v4, "{ uuid="

    if-nez v1, :cond_0

    const-string v1, "Modem "

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/internal/telephony/HardwareConfig;->state:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ", rilModel="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/internal/telephony/HardwareConfig;->rilModel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ", rat="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/HardwareConfig;->rat:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/util/BitSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ", maxActiveVoiceCall="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/internal/telephony/HardwareConfig;->maxActiveVoiceCall:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ", maxActiveDataCall="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/internal/telephony/HardwareConfig;->maxActiveDataCall:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ", maxStandby="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/internal/telephony/HardwareConfig;->maxStandby:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    const-string v1, "Sim "

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/HardwareConfig;->uuid:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, ", modemUuid="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/HardwareConfig;->modemUuid:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/internal/telephony/HardwareConfig;->state:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "Invalid Configration"

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
